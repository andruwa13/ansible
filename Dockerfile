FROM python:slim
MAINTAINER Andrew Vityuk andruwa13@me.com>
ENV VERSION 2.6.0

RUN pip install ansible==${VERSION} && \
    rm -rf ~/.cache/pip
