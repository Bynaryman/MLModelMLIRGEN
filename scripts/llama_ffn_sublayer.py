import argparse
from pathlib import Path

import torch
import torch.nn as nn
import torch.nn.functional as F

try:
    import torch_mlir
except ImportError as exc:
    raise SystemExit(
        "torch-mlir must be installed to run this script. See "
        "https://github.com/llvm/torch-mlir for installation instructions."
    ) from exc

_HAS_TORCH_MLIR_COMPILE = hasattr(torch_mlir, "compile")
if _HAS_TORCH_MLIR_COMPILE:
    _TORCH_MLIR_OUTPUT_TYPE = getattr(torch_mlir, "OutputType", None)
    if _TORCH_MLIR_OUTPUT_TYPE is None:
        raise SystemExit(
            "The installed torch-mlir build does not expose OutputType. "
            "Upgrade or downgrade torch-mlir to a compatible release."
        )
    torch_mlir_fx = None
else:
    try:
        from torch_mlir import fx as torch_mlir_fx
        from torch_mlir.compiler_utils import OutputType as _TORCH_MLIR_OUTPUT_TYPE
    except ImportError as exc:
        raise SystemExit(
            "The installed torch-mlir build is missing the FX importer APIs "
            "required by this script. Please upgrade torch-mlir."
        ) from exc


class LlamaFfnSublayer(nn.Module):
    """Llama FFN sublayer using SwiGLU (SiLU-gated linear unit)."""

    def __init__(self, dim: int = 512, hidden_dim: int | None = None, multiple_of: int = 256):
        super().__init__()

        if hidden_dim is None:
            hidden_dim = 4 * dim
            hidden_dim = int(2 * hidden_dim / 3)
            hidden_dim = multiple_of * ((hidden_dim + multiple_of - 1) // multiple_of)

        self.dim = dim
        self.hidden_dim = hidden_dim

        self.w_gate = nn.Linear(dim, hidden_dim, bias=False)
        self.w_up = nn.Linear(dim, hidden_dim, bias=False)
        self.w_down = nn.Linear(hidden_dim, dim, bias=False)

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        gate = F.silu(self.w_gate(x))
        up = self.w_up(x)
        return self.w_down(gate * up)


def positive_int(value: str) -> int:
    ivalue = int(value)
    if ivalue <= 0:
        raise argparse.ArgumentTypeError("value must be a positive integer")
    return ivalue


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--batch-size", type=positive_int, default=1)
    parser.add_argument("--seq-len", type=positive_int, default=128)
    parser.add_argument("--dim", type=positive_int, default=512)
    parser.add_argument("--hidden-dim", type=positive_int, default=None)
    parser.add_argument("--multiple-of", type=positive_int, default=256)
    parser.add_argument(
        "--output",
        type=Path,
        default=None,
        help="Optional path to write MLIR. If omitted, prints to stdout.",
    )
    parser.add_argument("--emit-debug-info", action="store_true")
    return parser.parse_args()


def compile_to_linalg_on_tensors(
    module: nn.Module,
    example_input: torch.Tensor,
    emit_debug_info: bool,
) -> str:
    if _HAS_TORCH_MLIR_COMPILE:
        scripted_module = torch.jit.script(module)
        compiled_module = torch_mlir.compile(
            scripted_module,
            (example_input,),
            output_type=_TORCH_MLIR_OUTPUT_TYPE.LINALG_ON_TENSORS,
        )
    else:
        compiled_module = torch_mlir_fx.export_and_import(
            module,
            example_input,
            output_type=_TORCH_MLIR_OUTPUT_TYPE.LINALG_ON_TENSORS,
            func_name="forward",
        )

    return compiled_module.operation.get_asm(
        large_elements_limit=10,
        enable_debug_info=emit_debug_info,
        print_generic_op_form=False,
    )


def main() -> int:
    args = parse_args()

    model = LlamaFfnSublayer(
        dim=args.dim,
        hidden_dim=args.hidden_dim,
        multiple_of=args.multiple_of,
    )
    example_input = torch.randn(args.batch_size, args.seq_len, args.dim)

    mlir_text = compile_to_linalg_on_tensors(
        model,
        example_input,
        emit_debug_info=args.emit_debug_info,
    )

    if args.output is None:
        print(mlir_text)
    else:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(mlir_text)

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
