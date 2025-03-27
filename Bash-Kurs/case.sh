#!/bin/bash

day=$(date +%a)

case "$day" in
Mon|Mo|Fri|Fre|Wed|Mit)		echo "This is the backup for Server1" ;;
Tue|Die|Thu|Die)		echo "This is the backup for Server2" ;;
*)				echo "This is the backup for the whole week" ;;
esac

case $1 in
Yes|yes|YES|yES|yeS|YEs)	echo "The order is executed";;
No|NO|no|nO)			echo "The order is not executed";;
*)				echo "There are no orders given, choose Yes or No";;
esac
