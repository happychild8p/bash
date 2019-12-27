#!/bin/bash
###Extended condition, extended integer test###
read -p "Enter one integer number: " num

if ((num == 10)); then
	echo "Your number is equal to 10"

elif ((num > 10)); then
	echo "It is greater than 10"

elif ((num < 10)); then
	echo "It is less than 10"
fi

if (( ((num % 2)) ==0 )); then
	echo "It is even number"
else
	echo "It is odd number"
fi

if (( ((num > 0)) && ((num < 11)) ));
then
	echo "$num is between 1 and 10"
fi

