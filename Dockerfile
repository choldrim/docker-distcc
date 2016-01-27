FROM debian
MAINTAINER choldrim <choldrim@foxmail.com>

LABEL description="distcc compiler node"

ADD sources.list.deepin /etc/apt/sources.list

RUN apt-get update \
    && yes | apt-get install g++ \
    && yes | apt-get install clang \
    && yes | apt-get install distcc

COPY source/start.sh /usr/bin/

ENTRYPOINT ["start.sh"]
