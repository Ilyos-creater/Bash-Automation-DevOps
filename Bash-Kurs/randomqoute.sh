#!/bin/bash

r=$(( $RANDOM%4+0 ))

author="\t -- Benjamin Franklin"
array=("1st qoute"
"2nd qoute"
"3rd qoute"
"4th qoute")

echo
echo ${array[$r]}
echo -e "$author"
echo
