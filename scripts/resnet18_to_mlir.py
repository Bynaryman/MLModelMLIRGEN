"""Utility to compile torchvision models to MLIR using torch-mlir.

This script builds a classification model from :mod:`torchvision.models` and
lowers it to the ``linalg-on-tensors`` dialect with :mod:`torch_mlir`.  It is
intended to be a minimal example of using torch-mlir for model conversion.
"""

import argparse
import inspect
from collections import OrderedDict
from pathlib import Path
from typing import Optional, Sequence

import torch
from torch import nn

try:
    import torch_mlir
    from torch_mlir import ir
except ImportError as exc:  # pragma: no cover - import guard
    raise SystemExit(
        "torch-mlir must be installed to run this script. See "
        "https://github.com/llvm/torch-mlir for installation instructions."
    ) from exc

try:
    import torchvision.models as tv_models
except ImportError as exc:  # pragma: no cover - import guard
    raise SystemExit(
        "torchvision must be installed to run this script. See "
        "https://pytorch.org/vision/stable/index.html for installation "
        "instructions."
    ) from exc

try:  # pragma: no cover - optional dependency
    from torchvision import ops as tv_ops
except Exception:
    tv_ops = None

try:
    _COMPILE_SUPPORTS_EXPORTED_NAME = (
        "exported_name" in inspect.signature(torch_mlir.compile).parameters
    )
except (ValueError, TypeError):  # pragma: no cover - defensive
    _COMPILE_SUPPORTS_EXPORTED_NAME = False


# ---------------------------------------------------------------------------
# Argument parsing helpers
# ---------------------------------------------------------------------------


def positive_int(value: str) -> int:
    """argparse helper that accepts positive integer values."""

    ivalue = int(value)
    if ivalue <= 0:
        raise argparse.ArgumentTypeError("value must be a positive integer")
    return ivalue


def parse_args(argv: Optional[Sequence[str]] = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--model",
        type=str,
        default="resnet18",
        help=(
            "Name of the torchvision model to instantiate (default: resnet18)."
            " Use `python -c \"import torchvision.models as m; print(m.list_models())\"`"
            " to see the available identifiers."
        ),
    )
    parser.add_argument(
        "--weights",
        type=str,
        default=None,
        help=(
            "Optional pretrained weights identifier. Provide either the enum"
            " member name such as `IMAGENET1K_V1` or a fully qualified"
            " reference like `ResNet18_Weights.IMAGENET1K_V1`."
        ),
    )
    parser.add_argument(
        "--batch-size",
        type=positive_int,
        default=1,
        help="Batch dimension size for the example input tensor (default: 1).",
    )
    parser.add_argument(
        "--channels",
        type=positive_int,
        default=3,
        help="Channel dimension size for the example input tensor (default: 3).",
    )
    parser.add_argument(
        "--height",
        type=positive_int,
        default=224,
        help="Input tensor height in pixels (default: 224).",
    )
    parser.add_argument(
        "--width",
        type=positive_int,
        default=224,
        help="Input tensor width in pixels (default: 224).",
    )
    parser.add_argument(
        "--num-classes",
        type=positive_int,
        default=None,
        help=(
            "Override the number of output classes when the model exposes a"
            " standard `.fc` or `.classifier` head."
        ),
    )
    parser.add_argument(
        "--exported-name",
        type=str,
        default="forward",
        help="Name of the exported function in the resulting MLIR module.",
    )
    parser.add_argument(
        "--output",
        type=Path,
        default=None,
        help="Optional path to write the MLIR module. If omitted the module is printed to stdout.",
    )
    parser.add_argument(
        "--emit-debug-info",
        action="store_true",
        help="Emit debug information (locations, type aliases) in the MLIR output.",
    )
    return parser.parse_args(argv)


# ---------------------------------------------------------------------------
# Model instantiation utilities
# ---------------------------------------------------------------------------


def _resolve_weights(model_name: str, weights_name: Optional[str]):
    """Resolve a weights enum entry from a user-provided identifier."""

    if weights_name is None:
        return None

    if "." in weights_name:
        enum_name, member_name = weights_name.split(".", 1)
        try:
            enum_cls = getattr(tv_models, enum_name)
        except AttributeError as exc:  # pragma: no cover - defensive
            raise SystemExit(
                f"Unknown torchvision weights enum '{enum_name}'."
            ) from exc
        try:
            return getattr(enum_cls, member_name)
        except AttributeError as exc:  # pragma: no cover - defensive
            raise SystemExit(
                f"Unknown weights member '{weights_name}'."
            ) from exc

    try:
        weights_enum = tv_models.get_model_weights(model_name)
    except Exception as exc:  # pragma: no cover - defensive
        raise SystemExit(
            f"Model '{model_name}' does not define pretrained weights in this"
            " version of torchvision."
        ) from exc

    candidate_names = [
        weights_name,
        weights_name.upper(),
        weights_name.upper().replace("-", "_"),
    ]
    seen: set[str] = set()
    for candidate in candidate_names:
        if candidate in seen:
            continue
        seen.add(candidate)
        try:
            return weights_enum[candidate]
        except KeyError:
            continue

    available = ", ".join(weight.name for weight in weights_enum)
    raise SystemExit(
        f"Unknown weights '{weights_name}' for model '{model_name}'. Available"
        f" options: {available}"
    )


def _instantiate_model(model_name: str, weights, num_classes: Optional[int]) -> nn.Module:
    get_model_fn = getattr(tv_models, "get_model", None)
    model: Optional[nn.Module] = None
    if callable(get_model_fn):
        try:
            model = get_model_fn(model_name, weights=weights)
        except ValueError:
            model = None
    if model is None:
        try:
            model_builder = getattr(tv_models, model_name)
        except AttributeError as exc:  # pragma: no cover - defensive
            available = []
            list_models = getattr(tv_models, "list_models", None)
            if callable(list_models):
                available = sorted(list_models())
            hint = (
                f"Unknown model '{model_name}'."
                + (f" Available models include: {', '.join(available)}" if available else "")
            )
            raise SystemExit(hint) from exc
        kwargs = {"weights": weights} if weights is not None else {}
        try:
            model = model_builder(**kwargs)
        except TypeError as exc:  # pragma: no cover - defensive
            if weights is not None:
                raise SystemExit(
                    f"Model '{model_name}' does not accept a 'weights' argument in this"
                    " version of torchvision. Remove --weights or upgrade torchvision."
                ) from exc
            raise

    if num_classes is not None:
        if not _replace_classification_head(model, num_classes):
            raise SystemExit(
                f"Model '{model_name}' does not expose a replaceable '.fc' or"
                " '.classifier' module."
            )

    _strip_training_only_modules(model)
    model.eval()
    return model


def _replace_classification_head(module: nn.Module, num_classes: int) -> bool:
    """Replace a standard classification head with a new linear layer."""

    if hasattr(module, "fc") and isinstance(module.fc, nn.Linear):
        in_features = module.fc.in_features
        module.fc = nn.Linear(in_features, num_classes)
        return True

    if hasattr(module, "classifier"):
        classifier = getattr(module, "classifier")
        if isinstance(classifier, nn.Linear):
            in_features = classifier.in_features
            module.classifier = nn.Linear(in_features, num_classes)
            return True
        if isinstance(classifier, nn.Sequential):
            named_modules = list(classifier.named_children())
            for index in range(len(named_modules) - 1, -1, -1):
                name, child = named_modules[index]
                if isinstance(child, nn.Linear):
                    new_linear = nn.Linear(child.in_features, num_classes)
                    named_modules[index] = (name, new_linear)
                    module.classifier = nn.Sequential(OrderedDict(named_modules))
                    return True

    return False


# ---------------------------------------------------------------------------
# Model cleanup helpers
# ---------------------------------------------------------------------------


def _strip_training_only_modules(module: nn.Module) -> None:
    """Simplify modules that introduce training-specific control flow."""

    if tv_ops is None:
        return

    stochastic_depth_cls = getattr(tv_ops, "StochasticDepth", None)

    def _recurse(parent: nn.Module) -> None:
        for name, child in list(parent.named_children()):
            if stochastic_depth_cls is not None and isinstance(child, stochastic_depth_cls):
                setattr(parent, name, nn.Identity())
            else:
                _recurse(child)

    _recurse(module)


# ---------------------------------------------------------------------------
# MLIR generation logic
# ---------------------------------------------------------------------------


def build_example_inputs(
    batch: int, channels: int, height: int, width: int
) -> Sequence[torch.Tensor]:
    for name, value in (
        ("batch-size", batch),
        ("channels", channels),
        ("height", height),
        ("width", width),
    ):
        if value <= 0:
            raise ValueError(f"{name} must be a positive integer (got {value}).")

    example = torch.randn((batch, channels, height, width), dtype=torch.float32)
    return (example,)


def _maybe_rename_exported_function(
    compiled_module: ir.Module, exported_name: str
) -> None:
    """Rename the exported entry function if the API lacks direct support."""

    if exported_name == "forward":
        return

    new_name_attr = ir.StringAttr.get(exported_name, context=compiled_module.context)
    module_block = compiled_module.operation.regions[0].blocks[0]

    for op in module_block.operations:
        if op.operation.name != "func.func":
            continue
        for attr in op.attributes:
            if attr.name != "sym_name":
                continue
            sym_attr = attr.attr
            if isinstance(sym_attr, ir.StringAttr):
                if sym_attr.value == exported_name:
                    return
                if sym_attr.value == "forward":
                    op.attributes["sym_name"] = new_name_attr
                    return
            break


def compile_to_linalg_on_tensors(
    module: torch.nn.Module,
    example_inputs: Sequence[torch.Tensor],
    exported_name: str,
    emit_debug_info: bool,
) -> str:
    scripted_module = torch.jit.script(module)
    compile_kwargs = dict(
        output_type=torch_mlir.OutputType.LINALG_ON_TENSORS,
    )
    if _COMPILE_SUPPORTS_EXPORTED_NAME:
        compile_kwargs["exported_name"] = exported_name

    compiled = torch_mlir.compile(scripted_module, example_inputs, **compile_kwargs)

    if not _COMPILE_SUPPORTS_EXPORTED_NAME:
        _maybe_rename_exported_function(compiled, exported_name)

    return compiled.operation.get_asm(
        large_elements_limit=10,
        enable_debug_info=emit_debug_info,
        print_generic_op_form=False,
    )


def main(argv: Optional[Sequence[str]] = None) -> int:
    args = parse_args(argv)

    weights = _resolve_weights(args.model, args.weights)
    model = _instantiate_model(args.model, weights=weights, num_classes=args.num_classes)

    example_inputs = build_example_inputs(
        args.batch_size, args.channels, args.height, args.width
    )

    mlir_text = compile_to_linalg_on_tensors(
        model,
        example_inputs,
        exported_name=args.exported_name,
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
