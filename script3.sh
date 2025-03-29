#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <user name>"
    exit 1
fi

USER_NAME=$1

# Проверка существования пользователя
if ! id -u "$USER_NAME" &> /dev/null; then
    echo "User $USER_NAME not found"
    exit 1
fi

echo "Hello, $USER_NAME!"

echo "UID: $(id -u "$USER_NAME")"

echo "Group list:"
id -Gn "$USER_NAME"
