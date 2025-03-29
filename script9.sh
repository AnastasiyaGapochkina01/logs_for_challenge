#!/bin/bash

read -p "What do you want to note? " NOTE

if [ -z "$NOTE" ]; then
    echo "Nothing to note"
    exit 0
fi

echo "$(date '+%d.%m.%Y %H:%M:%S') $NOTE" >> notes.txt
