#! /bin/bash

USERID=$(id -u)
echo "user id is : $USERID"
if [ "$USERID" -ne 0 ] then
echo " user doesnot have root permissions to install ...."
elif [ $USERID -eq 0 ] then
dnf install nginx
else
exit1;
fi;