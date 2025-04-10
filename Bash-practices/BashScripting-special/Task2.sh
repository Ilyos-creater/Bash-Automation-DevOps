#!/bin/bash

# The task of this bash script is to create a script, in the /etc/ directory, for this we need sudo right

file_etc() {
echo "Pls provide a fitting file name: "
read filename

sudo touch /etc/$filename

echo "The path to the file is /etc/$filename "
}
file_etc
