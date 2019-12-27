#!/bin/bash

declare -r NUM1=5

num2=4

num3=$((NUM1+num2))
num4=$((NUM1-num2))
num5=$((NUM1*num2))
num6=$((NUM1/num2))

echo "5 + 4 = $num3"
echo "$NUM1 - $num2 = $num4"
echo "$NUM1 * $num2 = $num5"
echo "$NUM1 / $num2 = $num6"
echo $((num2**NUM1))
echo $((NUM1%num2))

value=5
let value+=4
echo "Now the value is $value"

echo "value++ = $((value++))"
echo "++value = $((++value)) and value will have $value"
echo "value-- = $((value--)) and value will have $value"
echo "--value = $((--value))"

###Floating point values

flo1=1.2
flo2=3.4
flo3=$(python -c "print $flo1+$flo2")
echo $flo3
