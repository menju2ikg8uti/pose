#!/bin/sh
for i in 1 2 3 4 5; do
  SEC=$(date +%S)
  RESULT=$((SEC % 2))
  sleep 1
  if [ "$RESULT" -eq 1 ]; then
    exit 1
  fi
  echo 0
  echo "goto loop"
done
