FROM python:slim
MAINTAINER Andrew Vityuk andruwa13@me.com>

RUN pip install ansible && \
    rm -rf ~/.cache/pip
