#!/bin/bash

if [ -e "$1" ]; then
    echo "File $1 exists."
    exit 0  # Success
else
    echo "File $1 does not exist."
    exit 1  # Failure
fi
