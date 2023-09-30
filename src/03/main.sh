#!/bin/bash

if [[ $# -ne 4 || $1 != [1-6] || $2 != [1-6] || $3 != [1-6] || $4 != [1-6] ]]; then
    echo "incorrect input"
elif [[ $1 == $2 || $3 == $4 ]]; then
    echo "Background and text colors should not be the same. Please, try again."
else
    . ./colors.sh
    . ./vars.sh
    . ./print.sh
fi
