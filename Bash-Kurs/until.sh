#!/bin/bash

i=1

until [ $i -gt 6 ]
do
	echo "$i"
	i=$(( i + 1 ))
done
