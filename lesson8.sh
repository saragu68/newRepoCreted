#!/usr/bin/env bash
set -euo pipefail

# Default values (override by passing arguments: ./devops_commands_demo.sh 80 https://example.com)
DISK_LIMIT="${1:-80}"
CHECK_URL="${2:-https://example.com}"

echo "=== 1. Host & CPU Info ==="
HOSTNAME=$(hostname)
CORES=$(nproc)
LOAD_1M=$(awk '{print $1}' /proc/loadavg)
echo "Host: $HOSTNAME | CPU Cores: $CORES | 1-min Load: $LOAD_1M"

echo ""
echo "=== 2. Memory Usage ==="
free -h

echo ""
echo "=== 3. Disk Usage on '/' ==="
df -P /
DISK_USED=$(df -P / | awk 'NR==2 {gsub(/%/, "", $5); print $5}')
echo "Root Disk Used: ${DISK_USED}% (Limit: ${DISK_LIMIT}%)"

if [ "$DISK_USED" -ge "$DISK_LIMIT" ]; then
  echo "WARNING: Disk usage is at or above ${DISK_LIMIT}%!"
else
  echo "OK: Disk usage is below ${DISK_LIMIT}%."
fi

echo ""
echo "=== 4. Top Running Processes (First 6 lines) ==="
ps aux | head -n 6

echo ""
echo "=== 5. Listening Ports ==="
ss -tulnp 2>/dev/null || netstat -tulnp 2>/dev/null || echo "Neither ss nor netstat is installed."

echo ""
echo "=== 6. HTTP Endpoint Status Check ==="
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" --max-time 5 "$CHECK_URL" || true)
echo "URL: $CHECK_URL | HTTP Status: ${HTTP_CODE:-N/A}"