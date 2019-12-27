#!/usr/bin/bash

rand_str="A random string"

echo "Original string: $rand_str"
echo "String Length : ${#rand_str}"
echo "Second index : ${rand_str:2}" 
echo "Second index to seventh index : ${rand_str:2:7}" 
echo "Get everything after letter 'A' : ${rand_str#*A }"
