#!/bin/bash

echo "Wähle eine Frucht"
read -r FRUCHT

case "$FRUCHT" in

 Banane | banane)
	 echo "es hat geklappt" ;;
 Apfel | apfel)
	 echo "es hat geklappt";;
 *)
	echo "es hat nicht geklappt";;
esac
