#!/bin/bash

# Configuration
echo "Select one of the Cloud Providers aws/azure/gcp: "
read -r CLOUD_PROVIDER

echo "Please Enter your File Path: /example/Path/File.txt: "
read -r FILE_PATH

echo "Please Enter your Bucket Name: "
read -r BUCKET_NAME

# Convert cloud provider input to lowercase (fixes case-sensitivity issues)
CLOUD_PROVIDER=$(echo "$CLOUD_PROVIDER" | tr '[:upper:]' '[:lower:]')

# Validate Input
if [ -z "$CLOUD_PROVIDER" ] || [ -z "$FILE_PATH" ] || [ -z "$BUCKET_NAME" ]; then
    echo "The provided values are wrong, please try again."
    exit 1
fi

# Upload file based on cloud provider
case "$CLOUD_PROVIDER" in 
    aws)
        aws s3 cp "$FILE_PATH" "s3://$BUCKET_NAME/" --acl public-read
        echo "File uploaded to AWS S3: https://$BUCKET_NAME.s3.amazonaws.com/$(basename "$FILE_PATH")"
    ;;
    azure)
        az storage blob upload --container-name "$BUCKET_NAME" --file "$FILE_PATH" --name "$(basename "$FILE_PATH")"
        echo "File has been uploaded successfully."
    ;;
    gcp)
        gsutil cp "$FILE_PATH" "gs://$BUCKET_NAME/"
        echo "File uploaded to Google Cloud Storage: https://storage.googleapis.com/$BUCKET_NAME/$(basename "$FILE_PATH")"
    ;;
    *)
        echo "You used the wrong provider."
        exit 1
    ;;
esac

