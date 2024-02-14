#!/bin/sh
export REQUIRED_PYTHON_VERSION=$(cat pyproject.toml | grep python | awk '{print$3}' | tr -d \" | tr -d ^)
echo ${REQUIRED_PYTHON_VERSION}

export INSTALLED_PYTHON_VERSION=$(python --version -t)
echo $(INSTALLED_PYTHON_VERSION)