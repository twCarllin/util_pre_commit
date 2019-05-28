#!/bin/bash

# Set up tool to check python code style before commit
# Ref: https://ljvmiranda921.github.io/notebook/2018/06/21/precommits-using-black-and-flake8/
# Author Carl

set -e

echo "pre-commit==1.16.1" >> requirements_dev.txt

pip install pre-commit
pre-commit install

cp -a ./configs/. ./

echo ".flake8" >> .gitignore
echo ".pre-commit-config.yaml" >> .gitignore
echo "pyproject.toml" >> .gitignore

