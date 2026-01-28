#!/bin/sh

POOL_HOST=${POOL_HOST:-leywapool.com}
POOL_PORT=${POOL_PORT:-6322}
PROXY_PORT=${PROXY_PORT:-3334}

echo "Starting Stratum Proxy..."
echo "Pool: $POOL_HOST:$POOL_PORT"
echo "Proxy Port: $PROXY_PORT"

python mining_proxy.py \
  -o $POOL_HOST \
  -p $POOL_PORT \
  -sh 0.0.0.0 \
  -sp $PROXY_PORT
