#!/bin/bash

# Author: Heedong Yang
#
# Date: 3/19/2020
#
# Purpose: Creates system info report
#
# USAGE: ./myreport.bash

if [ $UID != "0" ]; then # only runs if logged in as root
	echo "You must be logged in as root." >&2
	exit 1
fi

echo "SYSTEM REPORT" > /root/report.txt
echo "Date: $(date +'%A %B %d, %Y (%H:%M:%p)')" >> /root/report.txt
echo >> /root/report.txt
echo "Hostname: $(hostname)" >> /root/report.txt
echo >> /root/report.txt
echo "Kernel Version: $(uname -rv)" >> /root/report.txt
echo >> /root/report.txt
echo "Memory: $(free -hm)" >> /root/report.txt
echo >> /root/report.txt
echo "Disk space: $(df -h)" >> /root/report.txt
echo >> /root/report.txt
echo "Uptime: $(uptime)" >> /root/report.txt
echo >> /root/report.txt
echo "IP address: $(ifconfig | grep inet | head -n 1)" >> /root/report.txt
