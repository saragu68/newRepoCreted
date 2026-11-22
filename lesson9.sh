#! /bin/bash

USERID=$(id -u)
for number in {1..100}
do
    echo "$number"
done

echo "user id is : $USERID"
if [ "$USERID" -ne 0 ]; then
echo " user doesnot have root permissions to install ...."
exit 1
elif [ "$USERID" -eq 0 ]; then
dnf install -y nginx
else
exit 1
fi;