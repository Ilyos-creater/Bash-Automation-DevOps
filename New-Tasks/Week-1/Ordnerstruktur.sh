#!/bin/bash


mkdir -p "Projekte"

Projekte="Projekte"

cd "$Projekte"

if [ ! -f "Projekt_1" ]; then
touch "Projekt_1"
fi

if [ ! -f "Projekt_2" ]; then
touch "Projekt_2"
fi
