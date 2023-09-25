#!/bin/bash

if [[ $# -ne 1 ]] || [[ $1 =~ [0-9]+$ ]]; then
    echo "incorrect input"
else
    echo "$1"
fi
