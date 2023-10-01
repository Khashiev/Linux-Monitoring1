#!/bin/bash

start=$(date +%s)

if [[ $# -ne 1 ]]; then
    echo "incorrect input"
else
    . ./print.sh
fi
