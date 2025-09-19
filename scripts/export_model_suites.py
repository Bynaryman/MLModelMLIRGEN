"""Batch export torchvision models to MLIR using predefined experiment suites."""

from __future__ import annotations

import argparse
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, Sequence

import resnet18_to_mlir


@dataclass(frozen=True)
class ModelExport:
    """Configuration for invoking :mod:`resnet18_to_mlir` for a single model."""

    name: str
    output_filename: str
    model: str
    weights: str | None = None
    batch_size: int = 1
    channels: int = 3
    height: int = 224
    width: int = 224
    num_classes: int | None = None
    exported_name: str = "forward"
    emit_debug_info: bool = False

    def to_argv(self, output_root: Path) -> list[str]:
        """Convert the configuration into CLI arguments for the exporter script."""

        output_path = output_root / self.output_filename
        argv = [
            "--model",
            self.model,
            "--batch-size",
            str(self.batch_size),
            "--channels",
            str(self.channels),
            "--height",
            str(self.height),
            "--width",
            str(self.width),
            "--exported-name",
            self.exported_name,
            "--output",
            str(output_path),
        ]
        if self.weights:
            argv.extend(["--weights", self.weights])
        if self.num_classes is not None:
            argv.extend(["--num-classes", str(self.num_classes)])
        if self.emit_debug_info:
            argv.append("--emit-debug-info")
        return argv


EXPERIMENT_SETS: dict[str, tuple[ModelExport, ...]] = {
    "toy": (
        ModelExport(
            name="mobilenet_v3_small_toy",
            output_filename="toy/mobilenet_v3_small_64x64.mlir",
            model="mobilenet_v3_small",
            batch_size=1,
            channels=3,
            height=64,
            width=64,
        ),
        ModelExport(
            name="squeezenet1_1_toy",
            output_filename="toy/squeezenet1_1_64x64.mlir",
            model="squeezenet1_1",
            batch_size=1,
            channels=3,
            height=64,
            width=64,
        ),
    ),
    "sota_imagenet": (
        ModelExport(
            name="resnet50_imagenet",
            output_filename="sota/resnet50_imagenet.mlir",
            model="resnet50",
            weights="IMAGENET1K_V2",
        ),
        ModelExport(
            name="convnext_tiny_imagenet",
            output_filename="sota/convnext_tiny_imagenet.mlir",
            model="convnext_tiny",
            weights="ConvNeXt_Tiny_Weights.IMAGENET1K_V1",
        ),
        ModelExport(
            name="efficientnet_v2_s_imagenet",
            output_filename="sota/efficientnet_v2_s_imagenet.mlir",
            model="efficientnet_v2_s",
            weights="EfficientNet_V2_S_Weights.IMAGENET1K_V1",
        ),
        ModelExport(
            name="swin_t_imagenet",
            output_filename="sota/swin_t_imagenet.mlir",
            model="swin_t",
            weights="Swin_T_Weights.IMAGENET1K_V1",
        ),
        ModelExport(
            name="vit_b_16_imagenet",
            output_filename="sota/vit_b_16_imagenet.mlir",
            model="vit_b_16",
            weights="ViT_B_16_Weights.IMAGENET1K_V1",
        ),
    ),
}


def _iter_suite_names(requested: Sequence[str] | None, run_all: bool) -> Iterable[str]:
    available = list(EXPERIMENT_SETS.keys())
    if run_all:
        return available
    if not requested:
        return ["toy"]
    seen: set[str] = set()
    ordered: list[str] = []
    for name in requested:
        if name in seen:
            continue
        seen.add(name)
        ordered.append(name)
    return ordered


def parse_args(argv: Sequence[str] | None = None) -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--suite",
        dest="suites",
        action="append",
        choices=sorted(EXPERIMENT_SETS.keys()),
        help="Name of an experiment suite to export. Can be provided multiple times.",
    )
    parser.add_argument(
        "--all",
        dest="run_all",
        action="store_true",
        help="Export every experiment suite.",
    )
    parser.add_argument(
        "--output-root",
        type=Path,
        default=Path("mlir_outputs"),
        help="Base directory where MLIR files will be written.",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="Print the planned exports without generating MLIR files.",
    )
    parser.add_argument(
        "--list",
        action="store_true",
        help="List available experiment suites and exit.",
    )
    return parser.parse_args(argv)


def list_suites() -> None:
    print("Available experiment suites:")
    for name, exports in EXPERIMENT_SETS.items():
        print(f"  - {name} ({len(exports)} models)")


def run_suite(suite_name: str, output_root: Path, dry_run: bool) -> None:
    exports = EXPERIMENT_SETS[suite_name]
    print(f"\n=== Exporting suite: {suite_name} ({len(exports)} models) ===")
    for export in exports:
        argv = export.to_argv(output_root)
        output_path = output_root / export.output_filename
        print(f"-> {export.name}: writing to {output_path}")
        if dry_run:
            print(f"   Command arguments: {' '.join(argv)}")
            continue
        try:
            exit_code = resnet18_to_mlir.main(argv)
        except SystemExit as exc:  # pragma: no cover - bubbling up failures
            raise SystemExit(
                f"Export failed for '{export.name}' in suite '{suite_name}': {exc}"
            ) from exc
        if exit_code != 0:  # pragma: no cover - defensive
            raise SystemExit(
                f"Export of '{export.name}' in suite '{suite_name}' returned non-zero exit "
                f"code {exit_code}."
            )


def main(argv: Sequence[str] | None = None) -> int:
    args = parse_args(argv)

    if args.list:
        list_suites()
        return 0

    suites = list(_iter_suite_names(args.suites, args.run_all))
    output_root: Path = args.output_root
    output_root.mkdir(parents=True, exist_ok=True)

    for suite in suites:
        run_suite(suite, output_root=output_root, dry_run=args.dry_run)

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
