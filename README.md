# MLModelMLIRGEN

This repository contains a utility script that demonstrates how to lower
classification models from
[torchvision](https://pytorch.org/vision/stable/index.html) to the MLIR
`linalg-on-tensors` dialect using
[torch-mlir](https://github.com/llvm/torch-mlir).

## Requirements

Torch-MLIR distributes pre-built "snapshot" wheels that target specific PyTorch
nightly builds. The scripts in this repository were validated with the
following environment:

* Python 3.11.9 (Torch-MLIR wheels currently support Python 3.10/3.11)
* `torch==2.10.0.dev20250921+cpu`
* `torchvision==0.25.0.dev20250921+cpu`
* `torch-mlir==20250921.577`

Create an isolated environment with a Python 3.11 interpreter and install the
matching wheels so the packages stay in sync:

```bash
python3.11 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install --pre \
  torch==2.10.0.dev20250921+cpu \
  torchvision==0.25.0.dev20250921+cpu \
  torch-mlir==20250921.577 \
  --extra-index-url https://download.pytorch.org/whl/nightly/cpu \
  -f https://github.com/llvm/torch-mlir-release/releases/expanded_assets/dev-wheels
```

The `pip install` invocation downloads all three wheels from their respective
nightly indices, ensuring the PyTorch and Torch-MLIR commits match.

## Usage

Activate the virtual environment created in the setup step (`source
.venv/bin/activate`) before running the helper scripts. The exporter defaults to
`resnet18`, but any torchvision architecture can be selected with `--model`
and, optionally, pretrained weights via `--weights`.

```bash
# Generate MLIR for the default ResNet-18 model
python scripts/resnet18_to_mlir.py --output resnet18.mlir

# Export MobileNetV3 with ImageNet weights
python scripts/resnet18_to_mlir.py \
  --model mobilenet_v3_small \
  --weights IMAGENET1K_V1 \
  --output mobilenet_v3_small.mlir

# Instantiate EfficientNet-B0 with a custom classifier head
python scripts/resnet18_to_mlir.py \
  --model efficientnet_b0 \
  --num-classes 5 \
  --output efficientnet_b0_5cls.mlir
```

Use the input-shape flags to match your data layout when the defaults (batch =
1, channels = 3, height = 224, width = 224) are not appropriate:

```bash
python scripts/resnet18_to_mlir.py \
  --model convnext_tiny \
  --batch-size 8 \
  --channels 6 \
  --height 128 \
  --width 128
```

Set `--exported-name` to control the symbol emitted in the MLIR module and
`--emit-debug-info` to include source locations and type aliases in the
generated text. Omitting `--output` prints the MLIR to stdout instead of writing
to disk.

## Batch export suites

Use `scripts/export_model_suites.py` to generate a curated collection of MLIR
modules with a single command. The script exposes multiple experiment suites so
you can quickly swap between lightweight sanity checks and larger SOTA models.

```bash
# Inspect the available suites
python scripts/export_model_suites.py --list

# Dry-run the toy suite (two compact networks with 64x64 inputs)
python scripts/export_model_suites.py --suite toy --dry-run

# Export all SOTA ImageNet models into a custom directory
python scripts/export_model_suites.py \
  --suite sota_imagenet \
  --output-root mlir_outputs/sota
```

Pass `--all` to materialize every configured suite or combine `--suite` flags to
run a specific subset. The `--output-root` argument controls the base directory
used for the generated MLIR files, making it straightforward to organize
artifacts by experiment.

## Generated MLIR samples

The repository includes several pre-generated MLIR modules under
`mlir_outputs/` to make it easy to inspect the lowering for different
architectures:

| File | Command used to regenerate |
| ---- | -------------------------- |
| `resnet18.mlir` | `python scripts/resnet18_to_mlir.py --output mlir_outputs/resnet18.mlir` |
| `resnet50.mlir` | `python scripts/resnet18_to_mlir.py --model resnet50 --output mlir_outputs/resnet50.mlir` |
| `mobilenet_v3_small_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model mobilenet_v3_small --weights IMAGENET1K_V1 --output mlir_outputs/mobilenet_v3_small_imagenet.mlir` |
| `alexnet.mlir` | `python scripts/resnet18_to_mlir.py --model alexnet --output mlir_outputs/alexnet.mlir` |
| `squeezenet1_1.mlir` | `python scripts/resnet18_to_mlir.py --model squeezenet1_1 --output mlir_outputs/squeezenet1_1.mlir` |
| `toy/mobilenet_v3_small_64x64.mlir` | `python scripts/export_model_suites.py --suite toy --output-root mlir_outputs` |
| `toy/squeezenet1_1_64x64.mlir` | `python scripts/export_model_suites.py --suite toy --output-root mlir_outputs` |
| `sota/resnet50_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model resnet50 --weights IMAGENET1K_V2 --output mlir_outputs/sota/resnet50_imagenet.mlir` |
| `sota/resnet152_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model resnet152 --weights IMAGENET1K_V2 --output mlir_outputs/sota/resnet152_imagenet.mlir` |
| `sota/convnext_tiny_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model convnext_tiny --weights ConvNeXt_Tiny_Weights.IMAGENET1K_V1 --output mlir_outputs/sota/convnext_tiny_imagenet.mlir` |
| `sota/convnext_base_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model convnext_base --weights ConvNeXt_Base_Weights.IMAGENET1K_V1 --output mlir_outputs/sota/convnext_base_imagenet.mlir` |
| `sota/convnext_large_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model convnext_large --weights ConvNeXt_Large_Weights.IMAGENET1K_V1 --output mlir_outputs/sota/convnext_large_imagenet.mlir` |
| `sota/efficientnet_v2_s_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model efficientnet_v2_s --weights EfficientNet_V2_S_Weights.IMAGENET1K_V1 --output mlir_outputs/sota/efficientnet_v2_s_imagenet.mlir` |
| `sota/efficientnet_v2_l_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model efficientnet_v2_l --weights EfficientNet_V2_L_Weights.IMAGENET1K_V1 --height 480 --width 480 --output mlir_outputs/sota/efficientnet_v2_l_imagenet.mlir` |
| `sota/efficientnet_b7_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model efficientnet_b7 --weights EfficientNet_B7_Weights.IMAGENET1K_V1 --height 600 --width 600 --output mlir_outputs/sota/efficientnet_b7_imagenet.mlir` |
| `sota/mobilenet_v3_large_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model mobilenet_v3_large --weights MobileNet_V3_Large_Weights.IMAGENET1K_V2 --output mlir_outputs/sota/mobilenet_v3_large_imagenet.mlir` |
| `sota/resnext101_64x4d_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model resnext101_64x4d --weights ResNeXt101_64X4D_Weights.IMAGENET1K_V1 --output mlir_outputs/sota/resnext101_64x4d_imagenet.mlir` |
| `sota/wide_resnet101_2_imagenet.mlir` | `python scripts/resnet18_to_mlir.py --model wide_resnet101_2 --weights Wide_ResNet101_2_Weights.IMAGENET1K_V2 --output mlir_outputs/sota/wide_resnet101_2_imagenet.mlir` |

These examples demonstrate how the script handles different classifier head
layouts and optional pretrained weights. Re-run any command above to refresh the
corresponding MLIR file.
