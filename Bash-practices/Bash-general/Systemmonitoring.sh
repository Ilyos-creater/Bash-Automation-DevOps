#!/bin/bash

echo "Welche Linux Distro hast du? (1-Ubuntu/Debian, 2- Fedora, 3- Arch)"
read -r  distro


echo "Was willst du dir anzeigen lassen? (1-volle Systemübersicht, 2-Nur Netzwerk, 3- Nur Speicher, 4- Beenden):"
read -r menu

case $menu in
	"1")
	       case $distro in
		       "1") sudo apt install -y  neofetch && neofetch ;;
		       "2") sudo dnf install -y  neofetch && neofetch ;;
		       "3") sudo pacman -S --noconfirm neofetch && neofetch ;;
			"*") echo "wrong distro, try again" && exit 1 ;;	
	       esac ;;
	"2") ip a ;;
	"3") free -h  ;;
	"4") echo "Beende...."; exit 0 ;;
	"*") echo "Falsches Menu gewählt"; exit 1 ;;
esac
