#!/usr/bin/env bash

LIMIT="${1:-80}"
USED=$(df -P / | awk 'NR==2 {gsub(/%/, "", $5); print $5}')
disk=$(df -P)
echo "disk spaace ----- $disk"
echo "Disk used on /: ${USED}% (Limit: ${LIMIT}%)"

if [ "$USED" -ge "$LIMIT" ]; then
  echo "Warning: Disk usage is ${USED}%, which reached or passed ${LIMIT}%."
else
  echo "Disk usage looks good."
fi