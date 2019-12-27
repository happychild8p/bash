#!/usr/bin/bash

##Extended test

read -p "Validate the specific date: " date


pattern="^[0-9]{8}$"

if [[ $date =~ $pattern ]]; then
				echo "$date is valid date format"
else
				echo "$date is not valid format for representing date"
fi

read -p "Enter 2 numbers to sum: " num1 num2

sum=$((num1+num2))
echo $sum
