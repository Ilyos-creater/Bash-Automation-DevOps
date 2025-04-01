#!/bin/bash

# this small project was a part of the shell scripting course
read -p "Pls provide the username: " user

stty -echo 
read -p "Pls provide the password: " password
stty echo

echo ""
echo "---"
echo "the $user is logged in, with the password: $password"
