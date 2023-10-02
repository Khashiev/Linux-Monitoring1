#!/bin/bash

start=$(date +%s)

if [[ $# -ne 1 ]]; then
    echo "incorrect input"
elif [ ! -d "$1" ]; then
    echo "No such file or directory"
elif [[ ${1: -1} != "/" ]]; then
    echo Directory path should end with '/'
else
    . ./print.sh
fi
