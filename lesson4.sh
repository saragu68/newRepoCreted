#! /bin/bash
read -p "select the environment stag/prod/int" env
if[$env == prod ];then
echo "u entered prod"
elif[$env == stag]; then
echo "u entered stag"
fi;