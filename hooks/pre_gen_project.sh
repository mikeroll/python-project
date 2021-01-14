#!/bin/bash
set -euo pipefail

asdf list python | grep -q "{{ cookiecutter.python_version }}" \
    || asdf install python "{{ cookiecutter.python_version }}"
