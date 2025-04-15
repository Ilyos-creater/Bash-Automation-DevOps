#!/bin/bash

API_CALL="https://jsonplaceholder.typicode.com/todos/1"


response=$(curl -s "$API_CALL")


if [ $? -ne 0 ]; then
  echo "Fehler: API wurde nicht erreicht."
  exit 1
fi


echo "API antwort ist:"
echo "$response"


title=$(echo "$response" | grep '"title"')

echo ""
echo "Titel lautet:"
echo "$title"

