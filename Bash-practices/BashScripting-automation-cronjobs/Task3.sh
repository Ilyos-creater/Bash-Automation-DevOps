#!/bin/bash

if [ ! -d /home/ilyas/Backup_DIR ]; then
	mkdir /home/ilyas/Backup_DIR
fi
current_date=$(date +"%Y-%m-%d")
output_path="/home/ilyas/Backup_DIR/backup_$current_date.tar"
tar -czvf "$output_path" /home/ilyas/Bash-Automation-DevOps

