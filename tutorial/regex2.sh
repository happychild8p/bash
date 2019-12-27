#!/usr/bin/bash

OIFS="$IFS"
IFS=","

read -p "Enter 2 numbers to add separated by a comma" num1 num2

num1=${num1//[[:blank:]]/}  ##any white space into NULL
num2=${num2//[[:blank:]]/}

sum=$((num1+num2))

echo "$num1 + $num2 = $sum"

IFS="$OIFS"
