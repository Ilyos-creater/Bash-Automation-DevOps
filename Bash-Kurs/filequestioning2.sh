#!/bin/bash

read -p "Which file or Directory do you want to check?" file

if [ -e $file ] # checks if the directiry/file exists
then
	echo "the directory or file exists" # here it can be a directory or file
fi

if [ -d $file ]
then
	echo "the file exists and is a file" # here it is a directory for sure
fi

if [ -f $file ] # this checks if it is clearly a file
then
	echo "the file exists and it is a file not a directory" # here it is a file
fi

if [ $file -ef path.sh ]
# -ef checks against the same Inodenumber and thefor checks for hardlinks
# -nt newer time (which file is newer)
# -ot older time (which file is older)
then
	echo "the file is the same"
fi
# -x executable file
# -w writeable file
# -r readable file
