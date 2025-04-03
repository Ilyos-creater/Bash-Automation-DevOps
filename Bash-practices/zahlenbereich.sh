#!/bin/bash

numb=7
if [ "$numb" -le 15 ] && [ "$numb" -ge 5 ]; then
	echo "Die Zahl $numb liegt im Bereich zwischen 5 und 15"
else
	echo " Die Zahl $numb liegt nicht im Bereich zwischen 5 und 15"
fi	
