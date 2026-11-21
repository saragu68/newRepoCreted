#! /bin/bash

echo date is :  $date
echo user is  $whoami
read -p "Enter your AWS environment (dev/stage/prod): " ENV
echo "good you selected the env : $ENV"