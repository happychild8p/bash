#!/bin/bash

#Define a function first!

getDate(){
				date
				return
}

getIPline(){
				ifconfig | head -2 | tail -1
				return
}

getDate
getIPline

name="Always"

localVar(){
				name="Only inside"
}

echo $name
localVar
echo $name

getSum(){
				local num3=$1
				local num4=$2

				local sum=$((num3+num4))
				
				echo $sum ##This will be returned
}
num1=5
num2=6

sum=$(getSum num1 num2)
echo "The sum is $sum"
