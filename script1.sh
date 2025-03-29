#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 </path/to/folder>"
    exit 1
fi

DATE=$(date '+%d.%m.%Y_%H.%M.%S')

DIR_PATH=$1

if [ ! -d "$DIR_PATH" ]; then
    echo "$DIR_PATH does not exists"
    exit 1
fi

ARCHIVE_NAME="${DIR_PATH##*/}_${DATE}.tar.gz"
tar -zcf "$ARCHIVE_NAME" "$DIR_PATH"
