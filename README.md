# MLModelMLIRGEN

This repository contains a utility script that demonstrates how to lower
classification models from
[torchvision](https://pytorch.org/vision/stable/index.html) to the MLIR
`linalg-on-tensors` dialect using
[torch-mlir](https://github.com/llvm/torch-mlir).

## Requirements

* Python 3.9+
* [PyTorch](https://pytorch.org/)
* [torchvision](https://pytorch.org/vision/stable/index.html)
* [torch-mlir](https://github.com/llvm/torch-mlir)

Install the dependencies with your preferred package manager, for example:

```bash
pip install torch torchvision torch-mlir
```

## Usage

The script defaults to `resnet18`, but any torchvision architecture can be
selected with `--model` and, optionally, pretrained weights via `--weights`.

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

These examples demonstrate how the script handles different classifier head
layouts and optional pretrained weights. Re-run any command above to refresh the
corresponding MLIR file.
