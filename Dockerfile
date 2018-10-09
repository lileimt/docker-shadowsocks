FROM ubuntu:16.04
MAINTAINER limingyuan<mingyuan0702@126.com>

RUN apt-get update && apt-get install python-pip
RUN pip install git+https://github.com/shadowsocks/shadowsocks.git@master

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 

ENTRYPOINT  /entrypoint.sh 

EXPOSE 8888
