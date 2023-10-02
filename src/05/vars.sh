#!/bin/bash

total_folders=$(find $1 -type d | wc -l)

top_size_folders=$(du -hs $1*/ | sort -rh | head -5 | awk -F"\t" '{printf "- %s, %s\n", $2, $1}' | nl -w1 -s" ")

total_files=$(find $1 -type f | wc -l)

conf_files=$(find $1 -type f -name "*.conf" | wc -l)
text_files=$(find $1 -type f -name "*.txt" | wc -l)
exe_files=$(find $1 -type f -executable | wc -l)
log_files=$(find $1 -type f -name "*.log" | wc -l)
archive_files=$(find $1 -regex '.*\(tar\|zip\|gz\|rar\)' | wc -l)
link_files=$(find $1 -type l | wc -l)

top_size_files=$(find $1 -type f -exec du -h {} + | sort -rh | head -n 10 | awk -F"\t" '{printf "- %s, %s\n", $2, $1}' | nl -w1 -s" ")
top_size_exe_files=$(find $1* -type f -executable -exec du -h {} + 2>/dev/null | sort -hr | sed -n '1,10'p | awk '{printf("%d %s %s ",NR,$2, $1); system("bash -c '\''md5sum "$2"'\''")}' | awk '{printf("%d - %s, %s, %s\n",NR,$2, $3, $4 )}')
