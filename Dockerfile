FROM jasonrivers/nginx-rtmp

MAINTAINER Danya Generalov <danya+local-streaming-plus@danya02.ru>


RUN apk add python3
RUN apk add py-pip
RUN apk add build-base
RUN pip3 install --upgrade pip
RUN pip3 install flask
RUN apk add linux-headers
RUN apk add musl-dev
RUN apk add python3-dev
RUN pip3 install uwsgi
RUN rm run.sh
ADD run.sh /
