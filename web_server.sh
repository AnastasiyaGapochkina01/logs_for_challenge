#!/bin/bash
LOG_FILE="$HOME/web_server.log"
log_levels=("ERROR" "INFO" "WARNING" "DEBUG")
methods=("GET" "POST" "PUT" "PATCH" "OPTIONS" "DELETE")
echo "Starting web-server on $(hostname)" >> $LOG_FILE
while true
do
  sleep 5
  random_method=${methods[$RANDOM % ${#methods[@]}]}
  random_level=${log_levels[$RANDOM % ${#log_levels[@]}]}
  echo "$(date +"%Y-%d-%m [%H:%M:%S]") $random_level $random_method" >> $LOG_FILE
  sleep 5
done
