#!/bin/bash


# [ $a -eq $b ] a is equal b
# -ne a is not equal b
# -lt a is smaller/less than b
# -gt a is bigger than b
# -le if a is less or equal to b
# -g if a is great or equal to b


a=11
b=13

if [ $a -eq $b ]
then
	echo "$a is equal to $b"
else
	echo "$a is not equal to b"
fi

if [ $a -gt $b ]
then
	echo "$a is bigger than $b"
elif [ $a -lt $b ]
then
	echo "$a is smaller than $b"
else 
	echo "$a is equal to $b]"
fi

if [ 13 -eq $b ]
then
	echo "$b ist gleich mit 13"
fi

# > a bigger b
# == a equal b
# ! a not equal b
# < a smaller b
# <= a smaller or equal b
# >= a bigger or equal b
if (( $a > $b ))
then
	echo "$a is bigger than $b"
fi

### Checking arguments, if there are 2 parameters

if [ $# -ne 2 ]
then
	echo "There is a minimum amount of 2 arguments needed"
	echo "use $0 arg1 arg2 ....."
exit 1;
else 
	echo "There are enough arguments"
fi
