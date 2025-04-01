#!/bin/bash

# /parameter.sh -b -r -w

#while [ "$1" != '' ]
#do
#	[ "$1" == "-b" ] && echo "Backup wird gestartet" && BACKUP="aktiv" && shift
#	[ "$1" == "-w" ] && echo "Backup wiederherstellung gestartet" && WIEDERHERSTELLUNG="aktiv" && shift
#	[ "$1" == "-r" ] && echo "Reinigung der Backups gestartet" && REINIGUNG="aktiv" && shift
#done

#### GET OPTIONTEST


while getopts ':bwro:' OPTION ;
do

case "$OPTION" in
b) "starting the backup";;
w) "wiederherstellung aktivieren";;
r) "reinigung starten";;
o) "Backup Ordner is in: $OPTARG";;
esac
done
