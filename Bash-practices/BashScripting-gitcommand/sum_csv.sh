#!/bin/bash


CSV_FILE="$1"
COLUMN="$2"


if [[ ! -f "$CSV_FILE" ]]; then
  echo "File not found: $CSV_FILE"
  exit 1
fi


if [[ -z "$COLUMN" ]]; then
  echo "Pls try again and provide a coloumn"
  exit 1
fi


SUM=$(awk -F',' -v column="$COLUMN" 'NR > 1 {sum += $column} END {print sum}' "$CSV_FILE")

echo "Summe von Spalte $COLUMN: $SUM"
