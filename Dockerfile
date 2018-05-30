FROM ubuntu:16.04

MAINTAINER Jiangxumin <jiang_xmin@massclouds.com>

USER    root
WORKDIR /root

COPY ./res/*  /usr/local/bin/

ENV TYPE="client"
ENV KCP_SERVER_IP=""
ENV MODE=""
ENV KEY=""

EXPOSE 8388  4000/udp

# CMD ["client_linux_amd64","-r","'$KCP_SERVER_IP':4000", "-l", ":8388", "-mode", "$MODE","-key","$KEY"]
CMD ["start.sh"]
