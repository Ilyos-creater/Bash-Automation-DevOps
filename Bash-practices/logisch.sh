#!/bin/bash

numb=15

if (( "$numb" > 10 && "$numb" < 20 )); then
	echo "Die Zahl liegt zwischen 10 und 20"
else
	echo "Die Zahl liegt nicht zwischen 10 und 20"
fi
