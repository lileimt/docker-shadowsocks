FROM ubuntu:16.04
MAINTAINER limingyuan<mingyuan0702@126.com>

RUN apt-get update && apt-get install python-pip libsodium18
RUN pip install shadowsocks

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 

ENTRYPOINT  /entrypoint.sh 

EXPOSE 8888
