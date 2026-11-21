#! /bin/bash
NAME="ALEX"
SERVER="WEB-01"
echo HELLO $NAME
echo checking server $SERVER
read -p "Enter your AWS environment (dev/stage/prod): " ENV
echo "good you selected the env : $ENV"