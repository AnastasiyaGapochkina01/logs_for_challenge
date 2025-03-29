#!/bin/bash

echo "System info:"
echo "------------------------"

echo "OS Version:"
cat /etc/os-release | grep VERSION_ID

echo -e "\nHostName:"
hostname

echo -e "\nRAM size:"
free -h | grep Mem:
