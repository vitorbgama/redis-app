#/bin/bahs
RESULT="`wget -qO- http://localhost:8090`"
wget -q loacalhost:8090
if [ $? -eq 0 ]
then
  echo "ok - serviço no ar!"
elif [[ $RESULT == *"Number"* ]]
then
  echo "ok - number os visits"
  echo $RESULT
else
  echo "not ok - number of visit"
  exit 1
fi
