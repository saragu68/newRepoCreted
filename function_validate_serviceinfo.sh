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

SERVERINFO(){
   echo "id :$(id)"
   echo "username :$(whoami)"
   echo "username :$(id)"
   echo "folder : $(pwd)"
}

INSTALLIFMISSING(){
pkg="$1"
if  rpm -q "$pkg" &>/dev/null; then
   echo "$pkg is already installed — skipping."
else
        echo "Installing $pkg..."
        dnf install -y "$pkg"
fi
}


#SERVERINFO
#validate "$USERID"
INSTALLIFMISSING mysql





