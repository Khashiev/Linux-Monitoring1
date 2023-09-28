#!/bin/bash

ip=$(hostname -I | awk '{print $1}')
mask="$(ip a | grep "$ip" | awk '{print $2}' | cut -d '/' -f2)"
M=$((0xffffffff ^ ((1 << (32 - "$mask")) - 1)))

echo "IP = $ip"
echo "MASK = $(((M >> 24) & 0xff)).$(((M >> 16) & 0xff)).$(((M >> 8) & 0xff)).$((M & 0xff))"
