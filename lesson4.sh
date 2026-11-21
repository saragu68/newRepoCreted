#! /bin/bash
#read -p "select the environment stag/prod/int" ENV
#if[["$ENV" == "prod"]]; then
#echo "u entered prod"
#elif[["$ENV" == "stag"]]; then
#echo "u entered stag"
#else
# echo "default"
#fi

#!/bin/bash

read -r -p "Select the environment (stag/prod/int): " ENV

if [[ "$ENV" == "prod" ]]; then
  echo "You entered prod"
elif [[ "$ENV" == "stag" ]]; then
  echo "You entered stag"
elif [[ "$ENV" == "int" ]]; then
  echo "You entered int"
else
  echo "default"
fi