#!/usr/bin/bash

if [ "$1" != "" ]; then
	read -p "You've entered $1, is this the Network address you want to use? [y/n]" response
	if [ $response == "y" ]; then
			Network="$1"
	elif [ $response == "n" ]; then
		echo "This script will find out hosts IP address in specified /24 network"
		read -p "Enter the /24 Network address you want to communicate: " Network
	else
		echo "Please type y or n, program terminated."
		exit
	fi
elif [ "$1" == "" ]; then
		echo "This script will find out hosts IP address in specified /24 network"
		read -p "Enter the /24 Network address you want to communicate: " Network
fi

for ip in `seq 1 254`; do
	ping ${Network}.${ip} -c 1 | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
