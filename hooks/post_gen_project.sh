#!/bin/bash
set -euo pipefail

direnv allow

git init

# Adding these dynamically to always pick fresh versions
asdf exec poetry add --dev \
    pytest \
    black \
    flake8 \
    flake8-bugbear \
    isort \
    mypy

asdf exec poetry install --no-root
