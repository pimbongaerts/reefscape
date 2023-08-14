#!/bin/bash

REMOTE_PATH="orthos:/focal_plots/queries_upload"
LOCAL_PATH="/home/deepcat/queries_upload"

file_list=$(rclone ls "$REMOTE_PATH")
hostname=$(hostname)

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
    rclone copy "$REMOTE_PATH/$filename" "$LOCAL_PATH"
    # Rename the remote file to mark it as being processed
    new_name="${filename%.*}_PROCESS.${filename##*.}"
    rclone moveto "$REMOTE_PATH"/"$filename" "$REMOTE_PATH"/"$new_name"
    # Run script
    plotname="${filename:0:20}"
    if grep -q "getcams" <<< "$filename"; then
        server_status="$hostname started processing the get_cameras query for: $filename"
        /home/deepcat/tools/local_scripts/post_to_slack.sh "$server_status"
        
        ~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/get_cameras.py "$plotname" "$LOCAL_PATH"/"$filename" 10
        
        server_status="$hostname finished processing the get_cameras query for: $filename"
        /home/deepcat/tools/local_scripts/post_to_slack.sh "$server_status"
    fi
    # Rename the remote file to mark it as done
    finish_name="${filename%.*}_FINISH.${filename##*.}"
    rclone moveto "$REMOTE_PATH"/"$new_name" "$REMOTE_PATH"/"$finish_name"    
    exit 0

done <<< "$file_list"