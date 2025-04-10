#!/bin/bash

# This task wants me to append the current time and date to a file everyminute


filename=/home/ilyas/Bash-Automation-DevOps/Bash-practices/BashScripting-automation-cronjobs/everyminute.txt
if [ ! -f "$filename" ]; then
	touch "$filename"
fi

date >> "$filename"

