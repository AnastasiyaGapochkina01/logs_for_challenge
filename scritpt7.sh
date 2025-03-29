#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 </path/to/folder>"
    exit 1
fi

DIR_PATH=$1

if [ ! -d "$DIR_PATH" ]; then
    echo "Folder $DIR_PATH not found"
    exit 1
fi

echo "$DIR_PATH stat:"
echo "-------------------------------"

echo "Folder owner: $(stat -c "%U" "$DIR_PATH")"

echo "Files count: $(find "$DIR_PATH" -maxdepth 1 -type f | wc -l)"
