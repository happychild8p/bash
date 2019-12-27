#!/usr/bin/bash

read -p "How old are you? " age

case $age in
[0-4])
	echo "Too young for school"
	;;
5)
	echo "Go to Kindergarten"
	;;		
[6-9]|1[0-8]) ### 10 ~ 18 as well
	grade=$((age-5))
	echo "Go to grade $grade"
	;;
*)
	echo "You are too old for school"
	;;
esac

can_vote=0 ##false

if [ $age -ge 18 ]; then
				can_vote=1
fi

echo "Can vote: $can_vote"
				
