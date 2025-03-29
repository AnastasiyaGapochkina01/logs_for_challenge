#!/bin/bash

URL="https://www.google.com"

RESPONSE_TIME=$(curl -s -w %{time_total} -o /dev/null "$URL")

echo "Response time for $URL: $RESPONSE_TIME"
