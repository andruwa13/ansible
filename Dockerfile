FROM python:alpine
MAINTAINER Andrew Vityuk andruwa13@me.com>
ENV VERSION 2.5.0

RUN echo "===> Update the index of available packages ..."  && \
  apk update
RUN echo "===> Install the requires apk package and python ..."  && \
  apk add --no-cache build-base python py-pip python-dev \
  libffi-dev openssl-dev


RUN echo "===> Install the ansible ..."  && \
  pip install ansible==${VERSION}

RUN echo "===> Removing package cache ..."  && \
  apk del build-dependencies             ; \
  rm -rf /var/cache/apk/*               && \
  rm -rf ~/.cache/pip
