#!/bin/sh
REQUIRED_PYTHON_VERSION=$(cat pyproject.toml | grep python | awk '{print$3}' | tr -d \" | tr -d ^)
echo ${REQUIRED_PYTHON_VERSION}

export REQUIRED_PYTHON_VERSION=${REQUIRED_PYTHON_VERSION}