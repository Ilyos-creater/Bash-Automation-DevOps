#!/bin/bash

read -p "Give the file a name: " dateiname

cd /etc/

sudo cat "$dateiname"
