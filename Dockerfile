FROM python:slim
MAINTAINER Andrew Vityuk andruwa13@me.com>
ENV VERSION 

RUN pip install ansible==${VERSION} && \
    rm -rf ~/.cache/pip
