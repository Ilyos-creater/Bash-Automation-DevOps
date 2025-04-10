#!/bin/bash

# The task of this bash script is to create a script, that creates a new nano file for the user, he then gets to edit it and after he is done, the content gets displayed :)
file() {
echo "Pls provide a fitting file name: "
read filename

nano $filename

echo "The content of the File $filename is: "
cat $filename
}
file
