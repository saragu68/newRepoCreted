#!/usr/bin/env bash

TARGET=$1
if [ -z "$TARGET" ]; then
 echo "pass folder or file name"
 exit 1
fi

if [ -e "$TARGET" ]; then
 echo "found"
 exit 1
else 
 echo "not found"
fi

