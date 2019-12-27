#!/usr/bin/bash

read -p "Enter one integer number: " num

if [ $num -eq 10 ]; then
				echo "Your number is equal to 10"
## >10
elif [ $num -gt 10 ]; then
				echo "Your number is greater than 10"
## <10
elif [ $num -lt 10 ]; then
				echo "Your number is less than 10"
## even number test and else are odd number
elif [ [ $num -lt 11 ] && [ $num -gt 0 ] ]; then
				echo "Your number is between 1 to 10"
fi

if (( $((num % 2)) == 0 )); then
				echo "Your number is even number"
else
				echo "Your number is odd number"
fi
