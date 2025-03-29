#!/bin/bash

echo "CPU info:"
echo "------------------------"

echo "Cores count:"
nproc --all

echo -e "\nCpu model:"
cat /proc/cpuinfo | grep "model name" | head -n 1 | awk -F: '{print $2}'
