#!/bin/sh

if ! poetry --version ; then
    echo "Poetry not found, will install poetry"
    sudo  install poetry
fi