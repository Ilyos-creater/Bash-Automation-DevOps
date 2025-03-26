#!/bin/bash


path="/var/www/thinksecre/index.html"

echo $path
# Show the whole line

# Deletes the smallest fitting piece from the right
echo "${path%/*}"




# Deletes the biggest fitting piece from the right
echo "${path%%/*}" 


# Deletes the smallest fitting piece from the left
echo "${path#*/}"




# Deletes the biggest fitting piece from the left
echo "${path##*/}"
