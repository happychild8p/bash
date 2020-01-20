#!/usr/bin/bash


# ECHO COMMAND

echo Hello World!

# VARIABLES
#Upperspace b convention
# Letters, numbers, underscores
NAME="Brad"
echo "My name is $NAME"
echo "My name is ${NAME}"

# USER INPUT
read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you!"

# SIMPLE IF STATEMENT
if [ "$NAME" == "Brad" ]
then
				echo "Your name is not Heedong"

elif [ "$NAME" == "Heedong" ]
then
				echo "Okay your name is Heedong"

else
				echo "Follow the tutorials"
fi

