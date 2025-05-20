#!/bin/bash

#  This is a random password generator!

echo "How many characters should the password have: "
read -r char

password=$(< /dev/urandom tr -dc 'A-Za-z0-9' | head -c "$char")

echo "This is the password: $password"
