#!/usr/bin/bash

# WHILLE LOOP - READ TROUGH A FILE LINE BY LINE

LINE=1

while read -r CURRENT_LINE
do
				echo "$LINE: $CURRENT_LINE"
				((LINE++))
done < "./sample.txt"

# FUNCTION
function sayHello() {
echo "Hello Wolrd"
}

sayHello

# FUNCTION WITH PARAMETERS
function greet() {
echo "Hello, I am $1 and I am $2"
}

greet "Heedong" "26"

# BASIC COMMANDS
## CREATE FOLDER AND WRITE TO A FILE
mkdir hello
touch "hello/world.txt"
echo "Hello Wolrd" >> "hello/world.txt"
echo "Created hello/world.txt"
