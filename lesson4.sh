#! /bin/bash
read -p "select the environment stag/prod/int : " ENV
if [[ "$ENV" == "prod" ]]; then
 echo "u entered prod"
elif [[ "$ENV" == "stag" ]]; then
 echo "u entered stag"
 else
  echo "default"
 fi

