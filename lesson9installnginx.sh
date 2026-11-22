#! /bin/bash
USERID=$(id -u)
if [ "$USERID" -eq 0 ]; then 
echo "installing nginx ...."
dnf install nginx -y
else
echo "please login with root....."
fi