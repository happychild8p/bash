#!/bin/bash

declare -r NUM1=5
declare -r NUM2=10
num3=15
name='Heedong'
echo 'NUM1 is '$NUM1' NUM2 is '$NUM2' and num3 is '$num3
echo 'NUM1 is $NUM1' #See single quote interpret all as a string
echo "NUM1 is $NUM1" #Double quote does not change the special stuff
num3=20
echo "num3 is now $num3"
echo "Next line will produce an error message!"
NUM1=20 #This cannot be done!! NUM1 is declared!!
echo "NUM1 is still $NUM1"

num4=$((NUM1+NUM2))
num5=$((NUM1-NUM2))
num6=$((NUM1*NUM2))
num7=$((NUM1/NUM2))
num8=$((NUM1%NUM2))
num9=$((NUM1**NUM2))

echo "num4= $NUM1+$NUM2 = $num4"
echo "num5= $NUM1-$NUM2 = $num5"
echo "num6= $NUM1*$NUM2 = $num6"
echo "num7= $NUM1/$NUM2 = $num7"
echo "num8= $NUM1%$NUM2 = $num8"
echo "num9= $NUM1**$NUM2 = $num9"
