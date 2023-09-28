#!/bin/bash

echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $(timedatectl show --property=Timezone --value) UTC $(date +"%z")"
echo "USER = $USER"
echo "OS = $(lsb_release -d | awk -F"\t" '{print $2}')"
echo "DATE = $(date +"%d %B %Y %T")"
echo "UPTIME = $(uptime -p | awk -F"up " '{print $NF}')"
echo "UPTIME_SEC = $(uptime -p | awk -F"." '{print $1}' /proc/uptime)"

./print_ip_and_mask.sh

echo "GATEWAY = $(ip r | grep default | awk '{print $3}')"
echo "RAM_TOTAL = $(free -m | grep -i mem | awk '{printf "%.3f GB\n", $2/1024}')"
echo "RAM_USED = $(free -m | grep -i mem | awk '{printf "%.3f GB\n", $3/1024}')"
echo "RAM_FREE = $(free -m | grep -i mem | awk '{printf "%.3f GB\n", $4/1024}')"
echo "SPACE_ROOT = $(df -k /root/ | grep / | awk '{printf "%.2f MB\n", $2/1024}')"
echo "SPACE_ROOT_USED = $(df -k /root/ | grep / | awk '{printf "%.2f MB\n", $3/1024}')"
echo "SPACE_ROOT_FREE = $(df -k /root/ | grep / | awk '{printf "%.2f MB\n", $4/1024}')"
