#!/usr/bin/bash

fav_nums=(3.14 2.718 .57721 4.6692)

echo "Pi : ${fav_nums[0]}"

fav_nums[4]=1.618

echo "GR : ${fav_nums[4]}"

fav_nums+=(1 7)

j=0

for i in ${fav_nums[*]}; do
				echo Index Number $j :  $i
				j=$((j + 1))
done

