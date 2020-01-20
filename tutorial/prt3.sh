#!/usr/bin/bash

NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
do
				echo "Hello $NAME"
done

FILES=$(ls *)
NEW="new"

for FILE in $FILES
do
				echo "Renaming $FILE to new-$FILE"
				mv $FILE $NEW-$FILE
done
				
