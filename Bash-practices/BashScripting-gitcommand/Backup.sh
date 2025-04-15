#!/bin/bash
echo "Pls provide the path to your directory: "
read -p "Path: " PATH

if [ ! -d "$PATH" ]; then
	echo "The provided directory doesn't exist, pls try again"
	exit 1
fi
DIR_NAME=$(basename "$PATH")

TIMESTAMP=$(date + "%Y-%m-%d_%H-%M-%S")
tar -czf "/home/ilyas/Backup_dir/${DIR_NAME}_${TIMESTAMP}.tar.gz" -C "$(dirname "$PATH")" "$DIR_NAME"

echo "Backup of '$DIR_NAME' created and compressed successfully!"
