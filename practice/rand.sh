#!/usr/bin/bash

read -p "Enter any number: " userInput

echo $userInput
rand=$RANDOM
sum=$((userInput + rand))

cat << END
In order to guess generated number, we will show you the result
sum = $sum
END
read -p "Guess randomly generated number: " guess

if [ $guess -eq $rand ]
then
				echo "$guess is the correct number"
else
				echo "$guess is NOT the correct number"
fi

