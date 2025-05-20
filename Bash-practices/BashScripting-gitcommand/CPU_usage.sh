#!/bin/bash


Maximum=90


CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
CPU_USAGE=$(echo "scale=2; 100 - $CPU_IDLE" | bc)
File=cpu_warn_log.txt

if [ ! -f "$File" ]; then
	touch "$File"
fi

echo "Current CPU Usage: $CPU_USAGE %"

if [ "$(echo "$CPU_USAGE > $Maximum" | bc -l)" -eq 1 ]; then
    echo " Warning: CPU Usage got to high ${Maximum}% should be the limit"
    echo "$(date): Warning CPU Usage ist at  ${CPU_USAGE}%" >> "$File"
fi

