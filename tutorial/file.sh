#!/bin/bash

read -p "Do you want to create file or directory?? [f/d/n]" response

if [ $response -eq 'f' ]
then
	read -p "Type file name you want: " name
	touch $name && chmod u+x $name

elif [ $response -eq 'd' ]
then
	read -p "Would you like to create parents dir as well? [y/n]" recursive
	if [ $recursive -eq "y" ]
	then
		read -p "Type directory or directory tree name you want: " name
		mkdir -p $name
	else
		mkdir $name
	fi
elif [ $response -eq 'n' ]
then
	echo "Let me know when you want"

else
	echo "Please make valid selection. [f/d/n]"
fi



