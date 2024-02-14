#!/bin/sh

if ! poetry --version ; then
    echo "Poetry not found"
    # sudo  install poetry
fi