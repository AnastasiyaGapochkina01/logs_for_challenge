#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USER_NAME=$1

# Проверка существования пользователя
if ! id -u "$USER_NAME" &> /dev/null; then
    echo "$USER_NAME not found"
    exit 1
fi

if id -nG "$USER_NAME" | grep -qE "(sudo|wheel)"; then
    echo "$USER_NAME is privileged"
else
    echo "$USER_NAME is not privileged"
fi
