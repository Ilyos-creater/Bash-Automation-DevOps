#!/bin/bash

echo "Gebe etwas aus: "

read -r "INPUT"

if [[ "${INPUT,,}" =~ ^[a-z0-9._%+-]+@[a-z0-9.-]+\.com$ ]]; then
        echo "Es war erfolgreich"
else
        echo "Es war gerade nicht erfolgreich"
fi
