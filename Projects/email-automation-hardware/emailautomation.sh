#!/bin/bash

EMAILTO="root@localhost"
LIMITHDD=89

df -H | grep -vE '^Dateisystem|tmpfs' | awk '{ print $5 " " $1}' | while read output;
do
	limit=$(echo $output | awk '{ print $1 }' | cut -d '%' -f1 )
	partition=$(echo $output | awk '{ print $2 }' )

	if [ $limit -ge $LIMITHDD ]
	then
		echo "Der Festplattenspeicher der Partition $partition auf dem Host $(hostname) geht zuende mit $limit %."
#| mail -s "Acthgung: Speicher geht zuende" $EMAILTO
fi
done
