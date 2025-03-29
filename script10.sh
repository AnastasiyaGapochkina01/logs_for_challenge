#!/bin/bash

echo "System info:"
echo "------------------------"

echo "Current date and time:"
date

echo -e "\nIP-адрес ВМ:"
IP=$(ip addr show | grep -oE '([0-9]{1,3}.){3}[0-9]{1,3}' | head -n 1)
if [ -n "$IP" ]; then
    echo "$IP"
else
    echo "Some error with IP"
fi

echo -e "\nKernel Version:"
uname -r

echo -e "\nTasks count:"
top -bn1 | grep Tasks
