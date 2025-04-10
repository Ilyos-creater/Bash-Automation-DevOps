#!/bin/bash

# The task of this bash script is to create a script, that prompts the user to edit the siystem configuration file with nano, 
file_superconfig() {
echo "Pls edit the systemconfiguration file "
echo "File is loading........"

sleep 2
nano /etc/hosts
}
file_superconfig
