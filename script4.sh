#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILENAME=$1

if [ ! -f "$FILENAME" ]; then
    echo "File $FILENAME mot found"
    exit 1
fi

LINE_COUNT=$(wc -l < "$FILENAME")

echo "Lines count in $FILENAME: $LINE_COUNT"
