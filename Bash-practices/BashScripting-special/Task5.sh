#!/bin/bash

# The task of this bash script is to create a script, that downloads a textfile from a URL and opens it in nano to edit it
file_URL() {
echo "Pls provide the URL: "
read URL

wget "$URL"
filename=$(basename "$URL")

echo "nano is loading..."
sleep 2

nano "$filename"

}
file_URL
