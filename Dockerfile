
FROM debian:10.3
LABEL "maintainer"="LarsGohr@posteo.de"

RUN apt update \
	&& apt -y upgrade \
  && apt install -y hub \
  && apt autoremove \
	&& apt autoclean \
	&& apt clean
