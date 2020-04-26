#!/bin/bash

# packageInfo.bash
# Purpose: Generate a report to display specified information of installed package/software
# USAGE: ./packageInfo.bash [application/package name]
# Author: Heedong Yang
# Date: 2020-04-26

if [ $(id) != "0" ]; then
	echo "You have to be root"
	exit 1
fi

if [ $# -ne 1 ]; then
	echo "You have to specify application or software name as argument" 2>&1
	echo "USAGE: $0 [application/package name]" 2>&1
	exit 1
fi

#Create report title
echo -e "\nSOFTWARE PACKAGE INFORMATION REPORT" > /root/package-info.txt
echo -e "Date: $(date +'A %B %d, %Y (%H:%M:%p)')\n" >> /root/package-info.txt

# Clear screen and use HERE Document to display select on report items to read into variable
clear
cat <<END
Available Package Information Items:

Name
Summary
Version
License
Source
URL
END
read -p "Enter word(s) show above separated by spaces: " choice

# Convert spaces in choice value into pipe symbol
choice=$(echo $choice | sed 's/ /|/g')
rpm -qi $1 | sed -r -n "/^($choice)/ p" >> /root/package-info.txt

echo "/root/package-info.txt has been created."
