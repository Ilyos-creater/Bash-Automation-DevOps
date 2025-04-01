#!/bin/bash

PIZZAPREIS=8
MWST=10
RENR=$(cat renr)

clear
echo "****************************"
echo "********PIZZERIA************"
echo "****************************"
echo "Rechnungsnummer: $RENR"
echo "Rechnungsdatum: $(date + %F)"
echo
read -p "Anzahl der verkauften Pizzen (8.-);" pizza
((pizza=$pizza*$PIZZAPREIS))
mwst=$(echo "scale=2;($pizza*$MWST) / 100" | bc -l)
gesamt=$(echo "scale=2;($pizza+$mwst)" | bc -l)
echo "Pizza gesamt	: $pizza$"
echo "MwSt (10%)	: $mwst$"
echo "Gesamtpreis	: $gesamt"

echo "$RENR	$gesamt $pizza $mwst" >> rechnung.csv
((RENR=$RENR+1))
echo $RENR > renr
