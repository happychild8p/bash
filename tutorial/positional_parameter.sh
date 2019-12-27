#!/usr/bin/bash

echo "1st Argument : $1"

sum=0

while [ $# -gt 0 ]; do

				num=$1
				sum=$((sum + num))
				shift ##now $2 become $1
done

echo "Sum : $sum"
