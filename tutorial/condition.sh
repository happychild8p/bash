#!/bin/bash

read -p "What is your name? " name
read -p "How old are you? " age

if [ $age -ge 16 ]
	then
	echo "Hello $name, You can drive"

elif [ $age -eq 15 ]
	then
	echo "Hello $name, You can drive next year"

else
	echo "Hello $name, You can't drive yet"
fi

read -p "Enter a number: " num

