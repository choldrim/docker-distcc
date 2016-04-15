FROM hub.deepin.io/debian:jessie
MAINTAINER choldrim <choldrim@foxmail.com>

LABEL description="distcc compiler node"

ADD http://mirrors.163.com/.help/sources.list.jessie /etc/apt/sources.list

RUN apt-get update
RUN yes | DEBIAN_FRONTEND=noninteractive apt-get install systemd
RUN yes | apt-get install g++ \
    && yes | apt-get install clang \
    && yes | apt-get install distcc

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists

COPY source/start.sh /usr/bin/

ENTRYPOINT ["start.sh"]

