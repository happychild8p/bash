#!/usr/bin/bash

# COMPARISON

NUM1=3
NUM2=5

if [ "$NUM1" -gt "$NUM2" ]
then
				echo "$NUM1 is greater than $NUM2"
else
				echo "$NUM1 is less than $NUM2"
fi

FILE="test.txt"

if [ -f "$FILE" ]
then
				echo "$FILE is a regular file"
else 
				echo "$FILE is NOT a regular file"
fi

read -p "Are you 25 or over? Y/N " ANSWER

case "$ANSWER" in
				[yY] | [yY][eE][sS])
								echo "You really need to wake up"
								;;
				[nN] | [nN][oO])
								echo "Enjoy your life"
								;;
				*)
								echo "Invalid entry. Please enter y/yes of n/no"
								;;
esac


