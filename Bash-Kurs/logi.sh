#!/bin/bash


read file
# ! is negating the condition
if [ ! -f $file ]
then
	echo "file doesn't exist"
fi

## AND && -a two or multiple conditions need to be correct
## OR || -o checks if one of multiple conditions is true
if [ -f $file ] || [ -f path2.sh ]
then
	echo "File $file and path2.sh don't exist"
fi

if [ -f $file -a -f path2.sh ]
then
	echo "Expression operator -a and -o are visible here"
fi
