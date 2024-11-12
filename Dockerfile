
FROM debian:12.8
LABEL "maintainer"="LarsGohr@posteo.de"

RUN apt update \
	&& apt -y upgrade \
  && apt install -y hub \
  && apt autoremove \
	&& apt autoclean \
	&& apt clean
