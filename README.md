# MLModelMLIRGEN

This repository contains a utility script that demonstrates how to lower a
ResNet-18 model defined in PyTorch to the MLIR `linalg-on-tensors` dialect using
[torch-mlir](https://github.com/llvm/torch-mlir).

## Requirements

* Python 3.9+
* [PyTorch](https://pytorch.org/)
* [torch-mlir](https://github.com/llvm/torch-mlir)

The script only depends on PyTorch and torch-mlir.  A compact implementation of
the ResNet-18 architecture is included to avoid additional third-party
dependencies such as `torchvision`.

## Usage

```bash
python scripts/resnet18_to_mlir.py --output resnet18.mlir
```

The command above writes the MLIR module to `resnet18.mlir`.  Omitting the
`--output` flag prints the generated IR to stdout instead.  Additional options
control the example input shape and exported symbol name:

```bash
python scripts/resnet18_to_mlir.py \ 
  --batch-size 1 \ 
  --height 224 \ 
  --width 224 \ 
  --num-classes 1000 \ 
  --exported-name forward
```

Use `--emit-debug-info` to include source locations and type aliases in the
resulting MLIR text.

## Generated MLIR sample

The repository includes a reference MLIR module produced with the default
settings at `mlir_outputs/resnet18.mlir`. Regenerate it with:

```bash
python scripts/resnet18_to_mlir.py --output mlir_outputs/resnet18.mlir
```
