#!/bin/bash

if [[ $# -ne 0 ]]; then
    echo "incorrect input"
else
    source config.sh
    is_default1=$column1_background
    is_default2=$column1_font_color
    is_default3=$column2_background
    is_default4=$column2_font_color

    if [ -z "${column1_background}" ]; then
        column1_background=6
        is_default1="default"
    fi

    if [ -z "${column1_font_color}" ]; then
        column1_font_color=1
        is_default2="default"
    fi

    if [ -z "${column2_background}" ]; then
        column2_background=2
        is_default3="default"
    fi

    if [ -z "${column2_font_color}" ]; then
        column2_font_color=4
        is_default4="default"
    fi

    if [[ $column1_background != [1-6] || $column1_font_color != [1-6] || $column2_background != [1-6] || $column2_font_color != [1-6] ]]; then
        echo "incorrect config.sh"
    elif [[ $column1_background == $column1_font_color || $column2_background == $column2_font_color ]]; then
        echo "Background and text colors should not be the same. Please, try again."
    else
        . ./colors.sh
        . ./vars.sh
        . ./print.sh
    fi
fi
