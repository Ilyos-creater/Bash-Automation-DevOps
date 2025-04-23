#!/bin/bash

echo "Bitte gebe exit ein: "
read -r EXIT

while [[ $EXIT != "exit" ]]; do
        echo "Bitte gebe exit ein: "
	read -r EXIT
done
echo "Das Programm beendet sich"
exit 0
