#!/bin/bash
set -euo pipefail

read -p "How do you wanna Name the file? " dateiname

vim "$dateiname"

if [[ -f "$dateiname" ]]; then
	echo  $dateiname
else
	echo "It didn#t work"
	exit
fi
