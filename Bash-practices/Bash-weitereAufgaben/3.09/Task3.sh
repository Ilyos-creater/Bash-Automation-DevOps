#!/bin/bash

read -p "Bitte nenne die URL: " URL

filename=$(basename "$URL")

wget $URL

if [[ -f "$filename" ]]; then
	echo "The download was succesful"
else
	echo "It didn't work"
fi
