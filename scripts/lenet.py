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

class LeNet(nn.Module):
    def __init__(self):
        super(LeNet, self).__init__()
        self.conv1 = nn.Conv2d(3, 6, 5, stride=2, bias=False)
        # self.pool1 = nn.MaxPool2d(2, 2)
        self.conv2 = nn.Conv2d(6, 16, 5, stride=2, bias=False)
        # self.pool2 = nn.MaxPool2d(2, 2)
        self.fc1 = nn.Linear(16*5*5, 120)
        self.fc2 = nn.Linear(120, 84)
        self.fc3 = nn.Linear(84, 10)

    def forward(self, x):
        out = F.relu(self.conv1(x))
        # out = self.pool1(out)
        out = F.relu(self.conv2(out))
        # out = self.pool2(out)
        out = torch.flatten(out, 1)  # out.view(out.size(0), -1)
        out = F.relu(self.fc1(out))
        out = F.relu(self.fc2(out))
        out = self.fc3(out)
        return out


example_input = torch.ones(1, 3, 32, 32)
if _HAS_TORCH_MLIR_COMPILE:
    scripted_module = torch.jit.script(LeNet())
    compiled_module = torch_mlir.compile(
        scripted_module,
        (example_input,),
        output_type=_TORCH_MLIR_OUTPUT_TYPE.LINALG_ON_TENSORS,
    )
else:
    compiled_module = torch_mlir_fx.export_and_import(
        LeNet(),
        example_input,
        output_type=_TORCH_MLIR_OUTPUT_TYPE.LINALG_ON_TENSORS,
        func_name="forward",
    )

print(
    compiled_module.operation.get_asm(
        large_elements_limit=10,
        enable_debug_info=False,
        print_generic_op_form=False,
    )
)
