#!/bin/bash

read -p "Bitte nenne die URL: " URL

filename=$(basename "$URL")

wget $URL

sudo nano $filename
