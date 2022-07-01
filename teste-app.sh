#!/bin/bash

RESULT="$(wget -qO- http://localhost:8090)"
wget -q localhost:8090
if wget -q localhost:8090
then
  echo "ok - serviço no ar!"
elif [[ $RESULT == *"Number"* ]]
then
  echo "ok - number os visits"
  echo "$RESULT"
else
  echo "not ok - number of visit"
  exit 1
fi
