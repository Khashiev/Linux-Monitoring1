#!/bin/bash

start=$(date +%s)

if [[ $# -ne 1 ]]; then
    echo "incorrect input"
elif [ ! -d "$1" ]; then
    echo "No such file or directory"
else
    . ./print.sh
fi
