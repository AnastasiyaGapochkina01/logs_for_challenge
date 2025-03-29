#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <path>"
    exit 1
fi


O_PATH=$1

if [ ! -e "$O_PATH" ]; then
    echo "$O_PATH not found"
    exit 1
fi

if [ -d "$O_PATH" ]; then
    echo "$O_PATH is folder"
    ls -l "$O_PATH"
else
    if [ -f "$O_PATH" ]; then
        echo "$O_PATH is file"
        head -n 5 "$O_PATH"
    else
        echo "$O_PATH is not folder or regular file"
    fi
fi
