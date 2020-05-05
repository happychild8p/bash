#!/usr/bin/bash

declare -a my_array
while read i; do
    my_array+=( $i )
done
echo ${array[3]}

