#!/bin/bash

# Load environment variables
source /etc/environment

# Specify files to upload
FILE_TO_UPLOAD=\$1

# Upload a File to R2 Using AWS CLI
aws s3 cp $FILE_TO_UPLOAD s3://$R2_BUCKET/$R2_PATH --endpoint-url $R2_ENDPOINT_URL

# Log file for upload status
LOGFILE="/var/log/nginx/upload_to_r2.log"

# Check the exit status of the upload command
if [ $? -ne 0 ]; then
    # Log the failure
    echo "$(date +'%Y-%m-%d %H:%M:%S') - Failed to upload $FILE_TO_UPLOAD" >> "$LOGFILE"
    exit 1
else
    # Log the success
    echo "$(date +'%Y-%m-%d %H:%M:%S') - Successfully uploaded $FILE_TO_UPLOAD" >> "$LOGFILE"
fi