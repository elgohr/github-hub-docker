
FROM ubuntu:18.10
LABEL "maintainer"="LarsGohr@posteo.de"

RUN apt-get update \
  && apt-get install software-properties-common -y --no-install-recommends \
  && add-apt-repository ppa:cpick/hub \
  && apt-get update \
  && apt-get install hub -y --no-install-recommends \
  && rm -rf /var/lib/apt/lists/*
