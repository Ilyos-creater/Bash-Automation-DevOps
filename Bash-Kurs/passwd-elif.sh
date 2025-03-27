#!/bin/bash

if grep "$1" /etc/passwd > /dev/null 2>&1
then
	echo "Ja den Benutzer gibt es"
elif grep "${1,,}" /etc/passwd > /dev/null 2>&1
then
	echo "Yes the user exists, but only not capped"
else
	echo "Nein den Benutzer gibt es nicht"
fi
