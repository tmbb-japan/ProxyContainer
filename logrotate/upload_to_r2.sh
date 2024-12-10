#!/bin/bash

# Set bucket name and path
R2_BUCKET="your-r2-bucket"
R2_PATH="logs/"

# Specify files to upload
FILE_TO_UPLOAD=\$1

# Upload a File to R2 Using AWS CLI
aws s3 cp $FILE_TO_UPLOAD s3://$R2_BUCKET/$R2_PATH