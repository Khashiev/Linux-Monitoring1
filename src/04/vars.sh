#!/bin/bash

hostname="$(hostname)"
timezone="$(timedatectl show --property=Timezone --value) UTC $(date +"%z")"
user="$USER"
os="$(lsb_release -d | awk -F"\t" '{print $2}')"

date="$(date +"%d %B %Y %T")"
uptime="$(uptime -p | awk -F"up " '{print $NF}')"
uptime_sec="$(uptime -p | awk -F"." '{print $1}' /proc/uptime)"

ip=$(hostname -I | awk '{print $1}')
m="$(ip a | grep "$ip" | awk '{print $2}' | cut -d '/' -f2)"
M=$((0xffffffff ^ ((1 << (32 - "$m")) - 1)))
mask="$(((M >> 24) & 0xff)).$(((M >> 16) & 0xff)).$(((M >> 8) & 0xff)).$((M & 0xff))"
gateway="$(ip r | grep default | awk '{print $3}')"

ram_total="$(free -m | grep -i mem | awk '{printf "%.3f GB\n", $2/1024}')"
ram_used="$(free -m | grep -i mem | awk '{printf "%.3f GB\n", $3/1024}')"
ram_free="$(free -m | grep -i mem | awk '{printf "%.3f GB\n", $4/1024}')"

space_root="$(df -k /root/ | grep / | awk '{printf "%.2f MB\n", $2/1024}')"
space_root_used="$(df -k /root/ | grep / | awk '{printf "%.2f MB\n", $3/1024}')"
space_root_free="$(df -k /root/ | grep / | awk '{printf "%.2f MB\n", $4/1024}')"
