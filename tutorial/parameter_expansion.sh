#!/usr/bin/bash

name="Heedong"
echo "${name}'s bash practice script"

samp_str="The dog climbed the tree"

echo "${samp_str//dog/cat}"

echo "I am ${name:=Admin}" ##If $name does not exist print Admin

