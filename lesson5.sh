#!/usr/bin/env bash

for SERVER in web-1 web-2 db-1; do
  echo "Pinging $SERVER..."
done
for server in INT PROD STAG; do
echo "server names are $server.." 
done