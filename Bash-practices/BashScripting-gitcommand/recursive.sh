#!/bin/bash

DIR=${1:-.}

if [ ! -d "$DIR" ]; then
    echo "Fehler: '$DIR' ist kein gültiges Verzeichnis."
    exit 1
fi

echo "Files in the Directory and Subdirectories:"
find "$DIR" -type f

