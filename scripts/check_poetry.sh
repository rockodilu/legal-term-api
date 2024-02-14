#!/bin/sh

if ! poetry --version ; then
    echo "Poetry not found, will install poetry"
    sudo pip install poetry
fi