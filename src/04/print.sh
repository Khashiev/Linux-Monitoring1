#!/bin/bash

echo -e "${txt1}${bg1}HOSTNAME${DEFAULT} = ${txt2}${bg2}$hostname${DEFAULT}"
echo -e "${txt1}${bg1}TIMEZONE${DEFAULT} = ${txt2}${bg2}$timezone${DEFAULT}"
echo -e "${txt1}${bg1}USER${DEFAULT} = ${txt2}${bg2}$user${DEFAULT}"
echo -e "${txt1}${bg1}OS${DEFAULT} = ${txt2}${bg2}$os${DEFAULT}"

echo -e "${txt1}${bg1}DATE${DEFAULT} = ${txt2}${bg2}$date${DEFAULT}"
echo -e "${txt1}${bg1}UPTIME${DEFAULT} = ${txt2}${bg2}$uptime${DEFAULT}"
echo -e "${txt1}${bg1}UPTIME_SEC${DEFAULT} = ${txt2}${bg2}$uptime_sec${DEFAULT}"

echo -e "${txt1}${bg1}IP${DEFAULT} = ${txt2}${bg2}$ip${DEFAULT}"
echo -e "${txt1}${bg1}MASK${DEFAULT} = ${txt2}${bg2}$mask${DEFAULT}"
echo -e "${txt1}${bg1}GATEWAY${DEFAULT} = ${txt2}${bg2}$gateway${DEFAULT}"

echo -e "${txt1}${bg1}RAM_TOTAL${DEFAULT} = ${txt2}${bg2}$ram_total${DEFAULT}"
echo -e "${txt1}${bg1}RAM_USED${DEFAULT} = ${txt2}${bg2}$ram_used${DEFAULT}"
echo -e "${txt1}${bg1}RAM_FREE${DEFAULT} = ${txt2}${bg2}$ram_free${DEFAULT}"

echo -e "${txt1}${bg1}SPACE_ROOT${DEFAULT} = ${txt2}${bg2}$space_root${DEFAULT}"
echo -e "${txt1}${bg1}SPACE_ROOT_USED${DEFAULT} = ${txt2}${bg2}$space_root_used${DEFAULT}"
echo -e "${txt1}${bg1}SPACE_ROOT_FREE${DEFAULT} = ${txt2}${bg2}$space_root_free${DEFAULT}\n"

all_colors="white red green blue purple black"
echo "Column 1 background = $is_default1 ($(echo "$all_colors" | cut -d ' ' -f$column1_background))"
echo "Column 1 font color = $is_default2 ($(echo "$all_colors" | cut -d ' ' -f$column1_font_color))"
echo "Column 2 background = $is_default3 ($(echo "$all_colors" | cut -d ' ' -f$column2_background))"
echo "Column 2 font color = $is_default4 ($(echo "$all_colors" | cut -d ' ' -f$column2_font_color))"
