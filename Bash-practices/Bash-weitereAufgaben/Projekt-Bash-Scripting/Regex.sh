#!/bin/bash
WEB_DIR="/var/www/html"

if [ ! -d "$WEB_DIR" ]; then
    echo "das Verzeichnis $WEB_DIR existiert nicht."
    exit 1
fi

echo "Überprüfe HTML-Dateien im Verzeichnis: $WEB_DIR"

for file in "$WEB_DIR"/*; do
    if [[ "$file" =~ \.html$ ]]; then
       sudo echo "$(basename "$file")"
    fi
done


