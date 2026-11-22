#! /bin/bash

USERID=$(id -u)


validate(){
    if [ $1 -eq 0 ]; then
    echo "$2 is root"
    dnf install mysql -y
    dnf install nginx -y
    else 
    echo "$1 -ne 0 so installing mysql "
    dnf install mysql -y
    fi
}

validate "$USERID" "USER1"