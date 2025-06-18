#!/bin/bash

echo "Gebe mir den Namen deiner Datei: "
read -r TEXT

sed 's/[0-9]\+/Zahl/g' "$TEXT"


