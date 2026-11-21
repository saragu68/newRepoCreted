#!/usr/bin/env bash

# $# is the total number of arguments passed to the script
if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <service_name> <env>"
  exit 1
fi

SERVICE="$1"
ENV="$2"

echo "Checking service '$SERVICE' in '$ENV' environment..."