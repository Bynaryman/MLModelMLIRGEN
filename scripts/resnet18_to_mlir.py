"""Utility to compile a ResNet-18 model to MLIR using torch-mlir.

This script builds a ResNet-18 network in PyTorch and lowers it to the
``linalg-on-tensors`` dialect with :mod:`torch_mlir`.  It is intended to be a
minimal, dependency-light example of using torch-mlir for model conversion.
"""

import argparse
import inspect
from pathlib import Path
from typing import Optional, Sequence, Type

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
    _COMPILE_SUPPORTS_EXPORTED_NAME = (
        "exported_name" in inspect.signature(torch_mlir.compile).parameters
    )
except (ValueError, TypeError):  # pragma: no cover - defensive
    _COMPILE_SUPPORTS_EXPORTED_NAME = False


# ---------------------------------------------------------------------------
# ResNet-18 implementation
# ---------------------------------------------------------------------------


def _conv3x3(in_planes: int, out_planes: int, stride: int = 1) -> nn.Conv2d:
    """3x3 convolution with padding."""

    return nn.Conv2d(
        in_planes, out_planes, kernel_size=3, stride=stride, padding=1, bias=False
    )


def _conv1x1(in_planes: int, out_planes: int, stride: int = 1) -> nn.Conv2d:
    """1x1 convolution."""

    return nn.Conv2d(
        in_planes, out_planes, kernel_size=1, stride=stride, padding=0, bias=False
    )


class BasicBlock(nn.Module):
    """Residual building block used by ResNet-18."""

    expansion: int = 1

    def __init__(
        self,
        inplanes: int,
        planes: int,
        stride: int = 1,
        downsample: Optional[nn.Module] = None,
        norm_layer: Optional[nn.Module] = None,
    ) -> None:
        super().__init__()
        if norm_layer is None:
            norm_layer = nn.BatchNorm2d

        self.conv1 = _conv3x3(inplanes, planes, stride)
        self.bn1 = norm_layer(planes)
        self.relu = nn.ReLU(inplace=True)
        self.conv2 = _conv3x3(planes, planes)
        self.bn2 = norm_layer(planes)
        self.downsample = downsample
        self.stride = stride

    def forward(self, x: torch.Tensor) -> torch.Tensor:  # type: ignore[override]
        identity = x

        out = self.conv1(x)
        out = self.bn1(out)
        out = self.relu(out)

        out = self.conv2(out)
        out = self.bn2(out)

        if self.downsample is not None:
            identity = self.downsample(x)

        out += identity
        out = self.relu(out)

        return out


class ResNet(nn.Module):
    """Minimal ResNet backbone matching the ResNet-18 topology."""

    def __init__(
        self,
        block: Type[BasicBlock],
        layers: Sequence[int],
        num_classes: int = 1000,
        norm_layer: Optional[nn.Module] = None,
    ) -> None:
        super().__init__()
        if norm_layer is None:
            norm_layer = nn.BatchNorm2d

        self._norm_layer = norm_layer

        self.inplanes = 64
        self.conv1 = nn.Conv2d(
            3, self.inplanes, kernel_size=7, stride=2, padding=3, bias=False
        )
        self.bn1 = norm_layer(self.inplanes)
        self.relu = nn.ReLU(inplace=True)
        self.maxpool = nn.MaxPool2d(kernel_size=3, stride=2, padding=1)

        self.layer1 = self._make_layer(block, 64, layers[0])
        self.layer2 = self._make_layer(block, 128, layers[1], stride=2)
        self.layer3 = self._make_layer(block, 256, layers[2], stride=2)
        self.layer4 = self._make_layer(block, 512, layers[3], stride=2)

        self.avgpool = nn.AdaptiveAvgPool2d((1, 1))
        self.fc = nn.Linear(512 * block.expansion, num_classes)

        self._initialize_weights()

    def _make_layer(
        self,
        block: Type[BasicBlock],
        planes: int,
        blocks: int,
        stride: int = 1,
    ) -> nn.Sequential:
        norm_layer = self._norm_layer
        downsample: Optional[nn.Module] = None

        if stride != 1 or self.inplanes != planes * block.expansion:
            downsample = nn.Sequential(
                _conv1x1(self.inplanes, planes * block.expansion, stride),
                norm_layer(planes * block.expansion),
            )

        layers: list[nn.Module] = []
        layers.append(block(self.inplanes, planes, stride, downsample, norm_layer))
        self.inplanes = planes * block.expansion
        for _ in range(1, blocks):
            layers.append(block(self.inplanes, planes, norm_layer=norm_layer))

        return nn.Sequential(*layers)

    def _initialize_weights(self) -> None:
        for module in self.modules():
            if isinstance(module, nn.Conv2d):
                nn.init.kaiming_normal_(module.weight, mode="fan_out", nonlinearity="relu")
            elif isinstance(module, (nn.BatchNorm2d, nn.GroupNorm)):
                nn.init.constant_(module.weight, 1.0)
                nn.init.constant_(module.bias, 0.0)

    def forward(self, x: torch.Tensor) -> torch.Tensor:  # type: ignore[override]
        x = self.conv1(x)
        x = self.bn1(x)
        x = self.relu(x)
        x = self.maxpool(x)

        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)

        x = self.avgpool(x)
        x = torch.flatten(x, 1)
        x = self.fc(x)
        return x


def resnet18(num_classes: int = 1000) -> ResNet:
    """Constructs a ResNet-18 model instance."""

    return ResNet(BasicBlock, layers=(2, 2, 2, 2), num_classes=num_classes)


# ---------------------------------------------------------------------------
# MLIR generation logic
# ---------------------------------------------------------------------------


def parse_args(argv: Optional[Sequence[str]] = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--batch-size",
        type=int,
        default=1,
        help="Batch dimension size for the example input tensor (default: 1).",
    )
    parser.add_argument(
        "--height",
        type=int,
        default=224,
        help="Input tensor height in pixels (default: 224).",
    )
    parser.add_argument(
        "--width",
        type=int,
        default=224,
        help="Input tensor width in pixels (default: 224).",
    )
    parser.add_argument(
        "--num-classes",
        type=int,
        default=1000,
        help="Number of output classes for the classification head (default: 1000).",
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


def build_example_inputs(batch: int, height: int, width: int) -> Sequence[torch.Tensor]:
    example = torch.randn(batch, 3, height, width, dtype=torch.float32)
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

    model = resnet18(num_classes=args.num_classes)
    model.eval()

    example_inputs = build_example_inputs(args.batch_size, args.height, args.width)

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
