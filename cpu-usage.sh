#!/bin/bash

DISK_USAGE=$(df -hT | grep -v Filesystem)

while IFS= read -r line  
do
    echo "$line"
done <<< "$DISK_USAGE" # "<<<" string	Read input from a string
#👉 Take the content stored in $DISK_USAGE