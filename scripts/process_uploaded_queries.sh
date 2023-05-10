#!/bin/bash

REMOTE_PATH="orthos:/focal_plots/queries_upload"
LOCAL_PATH="/home/deepcat/queries_upload"

file_list=$(rclone ls "$REMOTE_PATH")

while IFS= read -r file; do
    filename=$(echo "$file" | awk '{print $NF}')
    
    # Check if the file contains the specified string
    if grep -q "PROCESS" <<< "$filename"; then
        exit 0 # Stop execution if there is a file currently being processed
    elif grep -q "ERROR" <<< "$filename"; then
        continue # Ignore files with a status
    elif grep -q "FINISH" <<< "$filename"; then
        continue # Ignore files with a status
    fi
    
    # Process the file
    echo "Processing file: $filename"
    rclone copy "$REMOTE_PATH":"$filename" "$LOCAL_PATH"
    new_name="${filename%.*}_PROCESS.${filename##*.}"
    rclone moveto "$REMOTE_PATH":"$filename" "$REMOTE_PATH":"$new_name"
    exit 0

done <<< "$file_list"