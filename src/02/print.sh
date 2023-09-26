#!/bin/bash

echo "HOSTNAME = $HOSTNAME"
echo "TIMEZONE = $(timedatectl show --property=Timezone --value) UTC $(date +"%z")"
echo "USER = $USER"
echo "OS = $(lsb_release -d | awk -F"\t" '{print $2}')"
echo "DATE = $(date +"%d %B %Y %T")"
echo "UPTIME = $(uptime -p | awk -F"up " '{print $NF}')"
echo "UPTIME_SEC = $(uptime -p | awk -F"." '{print $1}' /proc/uptime)"

######
ip=$(hostname -I | awk '{print $1}')
echo "IP = $ip"

# ip_mask="$(ip -4 a | awk -F" " /"$ip"/'{print $2}')"
mask="$(ip -4 a | grep "$ip" | awk '{print $2}')"
# mask2=$(ip -4 addr show | grep inet | awk '{print $2}' | cut -d '/' -f 2 | head -n 1)
# echo "MASK = $ip_mask" | awk -F"/" '{print $2}'
echo "MASK = $mask"
# | cut -d '/' -f 2 | head -n 1
######

echo "GATEWAY = $(ip r | grep default | awk '{print $3}')"
