FROM python:slim
MAINTAINER Andrew Vityuk andruwa13@me.com>

RUN apt update && \
    apt -y upgrade && \
    pip install ansible && \
    rm -rf ~/.cache/pip
