FROM golang:latest
MAINTAINER Kyle Lucy

CMD gcp-cups-connector -config-filename /config/gcp-cups-connector.config.json

RUN mkdir /config \
  && apt-get update \
  && apt-get install -y build-essential libcups2-dev libsnmp-dev libavahi-client-dev git bzr \
  && go get github.com/google/cloud-print-connector/...
  
VOLUME /config /etc/cups /var/log/cups /var/spool/cups /var/cache/cups
EXPOSE 631
