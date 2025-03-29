#!/bin/bash

if [ ! -w /var/log/disk_space.log ]; then
    echo "Permission Error on /var/log/disk_space.log."
    exit 1
fi

while IFS= read -r line; do
    columns=($line)
    
    if [ ${#columns[@]} -ge 5 ]; then
        used_percent=${columns[4]}
        
        if [ "$used_percent" != "Use%" ] && [ "$used_percent" != "" ]; then
            used_percent=${used_percent//%/}
            if [ $used_percent -gt 80 ]; then
                echo "$(date '+%d.%m.%Y %H:%M:%S') - ${columns[5]} used $used_percent%" >> /var/log/disk_space.log
            fi
        fi
    fi
done < <(df -h)

