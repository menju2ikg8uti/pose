FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git build-essential libffi-dev python3-dev && \
    git clone https://github.com/slush0/stratum-mining-proxy.git && \
    cd stratum-mining-proxy && \
    pip install --no-cache-dir -r requirements.txt

WORKDIR /app/stratum-mining-proxy

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 3334

ENTRYPOINT ["/entrypoint.sh"]
