
FROM ubuntu:18.04
LABEL "maintainer"="LarsGohr@posteo.de"

COPY hub-linux-amd64-2.12.3.tgz /hub-linux-amd64-2.12.3.tgz
RUN tar -zxf /hub-linux-amd64-2.12.3.tgz -C / && rm /hub-linux-amd64-2.12.3.tgz

RUN apt-get update \
  && apt-get install software-properties-common -y --no-install-recommends \
  && add-apt-repository ppa:cpick/hub \
  && apt-get update \
  && /hub-linux-amd64-2.12.3/install \
  && rm -rf /var/lib/apt/lists/*