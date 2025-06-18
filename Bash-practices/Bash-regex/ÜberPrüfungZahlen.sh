#!/bin/bash

echo "Gebe etwas aus: "

read -r "INPUT"

if [[ "${INPUT,,}" =~ [0-9]+ ]]; then
	echo "Es war erfolgreich"
else
	echo "Es war gerade nicht erfolgreich"
fi
