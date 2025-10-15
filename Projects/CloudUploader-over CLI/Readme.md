# Cloud File Uploader Script

## Overview
This script allows you to upload files to one of three cloud providers: AWS S3, Azure Blob Storage, or Google Cloud Storage. The user is prompted to select the cloud provider, provide the file path, and the bucket name, and the script will then upload the file to the chosen provider. I have gotten the idea from an old version of the Learn2Cloud online guide. Where it was a simple CLoud Uploader script.
I enhanced it by adding the possibility to choose one of the major three cloud uploaders.

## Purpose
This script was created after completing the Shell Scripting course on KodeKloud. It serves as a practical exercise in automating cloud file uploads using the CLI for AWS, Azure, and Google Cloud. It’s an excellent tool for learning purposes and can be easily extended or customized.

## Learning Opportunity
One can use this script for educational purposes. You can integrate this script with Git and provide it to your favorite Language Model (LLM) like ChatGPT for feedback and quizzing to further test your understanding of shell scripting.

## Features
Interactive Input: The script prompts the user for the cloud provider, file path, and bucket name.
Cloud Support: Uploads to AWS S3, Azure Blob Storage, or Google Cloud Storage.
Easy to Use: No complex configuration needed—just enter the required details and it will upload the file.

## Requirements
To run this script, you need the following:

AWS CLI: Installed and configured on your system.
Azure CLI: Installed and configured on your system.
Google Cloud SDK (gsutil): Installed and configured on your system.
Bash Shell: The script is written in Bash, so it requires a Unix-like system with Bash.

## How to Use
Clone or Download the Script:

Download or clone this repository to your local machine.

Make the Script Executable:

chmod +x cloud_uploader.sh


Run the Script:

./cloud_uploader.sh

Provide Input:

Cloud Provider: Select one of aws, azure, or gcp.
File Path: Enter the file path you wish to upload.
Bucket Name: Enter the bucket name for the chosen cloud provider.
The script will upload your file to the selected cloud provider and display a URL for accessing the file if applicable.

## Example Usage
bash
Kopieren
$ ./cloud_uploader.sh
Select one of the Cloud Providers aws/azure/gcp: 
aws
Please Enter your File Path: /example/Path/File.txt: 
/Users/user/Documents/example.txt
Please Enter your Bucket Name: 
my-bucket
File uploaded to AWS S3: https://my-bucket.s3.amazonaws.com/example.txt
Contributing
Feel free to fork, improve, or extend this script as needed. You can add more cloud providers, error handling, or make the script more robust. If you find any issues or have suggestions, feel free to open an issue or pull request.

License
This script is available under the MIT License. See the LICENSE file for more details.

Acknowledgements
This script is motivated by an odler version of the Learn2Cloud Guide. 
