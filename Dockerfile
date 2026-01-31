FROM chriskm12/system-service:002
WORKDIR /opt/node
RUN cd /opt/node \
  # server and number
  #&& ./startus.sh 14
  && ./startde.sh 14
