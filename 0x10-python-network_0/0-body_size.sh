#!/bin/bash

# Check if URL argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL provided as argument
URL=$1

# Send request to the URL and store response body in a temporary file
response=$(curl -s -o response.txt -w "%{size_download}" "$URL")

# Display the size of the response body in bytes
echo "Size of the response body: $response bytes"

# Remove the temporary response file
rm -f response.txt


