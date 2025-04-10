#!/bin/bash

URL_Download() {
    echo "Please provide the URL: "
    read URL

    wget "$URL"

    filename=$(basename "$URL")

    if [ -f "$filename" ]; then
        echo "File downloaded successfully: $filename"
	cat "$filename"
    else
        echo "The Download failed."
        exit 1
    fi
}
URL_Download

