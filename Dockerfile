FROM hub.deepin.io/debian:jessie

MAINTAINER choldrim <choldrim@foxmail.com>

ADD http://mirrors.163.com/.help/sources.list.jessie /etc/apt/sources.list

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && yes | apt-get install --no-install-recommends --no-install-suggests g++ clang distcc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists

COPY entrypoint.sh /entrypiont.sh

EXPOSE 3632
ENTRYPOINT ["/entrypiont.sh"]
