#!/bin/bash
set -euo pipefail

direnv allow

git init

# Adding these dynamically to always pick fresh versions
poetry add --dev \
    pytest \
    black \
    flake8 \
    flake8-bugbear \
    isort \
    mypy

poetry install
