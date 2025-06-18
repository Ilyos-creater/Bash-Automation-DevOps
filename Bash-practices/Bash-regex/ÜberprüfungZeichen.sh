#!/bin/bash

echo "Pls. give me your input: "
read -r INPUT

if [[ "${INPUT,,}" =~ linux ]]; then
	echo "The word Linux was present"
else
	echo "The word wasn't there"
fi
