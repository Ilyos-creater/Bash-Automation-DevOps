#!/bin/bash

used=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
file="warning.txt"

if [ ! -f "$file" ]; then
    touch "$file"
fi

if [ "$used" -gt 10 ]; then
    echo "This is a warning: only $((100 - $used))% free space left." >> "$file"
else
	echo "It didn't work"

fi

