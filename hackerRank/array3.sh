#!/usr/bin/bash
while read i; do
	my_array+=( $i )
done
echo ${#my_array[@]}
