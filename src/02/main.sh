#!/bin/bash

if [[ $# -ne 0 ]]; then
    echo "incorrect input"
else
    ./print.sh

    read -r -p "Do you want to write the output to a log file? (Y/N) " answer

    if [[ $answer == Y || $answer == y ]]; then
        name="$(date +"%d_%m_%y_%H_%M_%S").status"
        ./print.sh >"$name"
    fi
fi
