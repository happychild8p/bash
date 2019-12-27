#!/usr/bin/bash

fav_nums=(3.14 2.718 .57721 4.6692)

echo "Array Length : ${#fav_num[@]}"
echo "Index 3 Length : ${#fav_num[3]}"

fav_nums+=(1, 7)

sorted_nums=(
	$(for i in "${fav_nums[@]}"; do
		echo $i;
	done | sort)
)

echo "Sorted array"

for i in ${sorted_nums[*]}; do
				echo $i
done

unset 'sorted_nums[1]'
unset sorted_nums
