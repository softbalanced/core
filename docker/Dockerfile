FROM debian:stretch
LABEL maintainer="BitDollar Developers <dev@bitdollar.org>"
LABEL description="Dockerised BitDollarCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
