#!/bin/bash

echo "Gebe etwas aus: "
read -r INPUT

sed 's/Fehler\+/Problem/g' "$INPUT"


