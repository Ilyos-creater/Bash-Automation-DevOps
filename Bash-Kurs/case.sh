#!/bin/bash

day=$(date +%a)
case "$day" in

Mon) echo "This is the backup for Monday" ;;
Tue) echo "This is the backup for Tuesday" ;;
Wed) echo "This is the backup for Wednesday" ;;
Thu) echo "This is the backup for Thursday" ;;
Fri) echo "This is the backup for Friday" ;;
esac

