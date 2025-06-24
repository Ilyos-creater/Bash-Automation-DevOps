#!/bin/bash

echo "Bitte nenne deine Datei"
read -r DATEI

echo $DATEI || grep "Apfel"

