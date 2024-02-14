#!/bin/sh
REQUIRED_PYTHON_VERSION=$(cat pyproject.toml | grep python | awk '{print$3}' | tr -d \" | tr -d ^)
echo ${REQUIRED_PYTHON_VERSION}

INSTALLED_PYTHON_VERSION=$(python --version | awk '{print$2}')
echo ${INSTALLED_PYTHON_VERSION}

if INSTALLED_PYTHON_VERSION < REQUIRED_PYTHON_VERSION; then
    sudo apt-get install python ${REQUIRED_PYTHON_VERSION} -y
fi