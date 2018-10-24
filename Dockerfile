FROM python:slim
MAINTAINER Andrew Vityuk andruwa13@me.com>

RUN apt update && \
    apt -y upgrade && \
    pip install ansible && \
    apt-get -y autoremove &&  \
    apt-get -y clean && \
    apt-get purge -y --auto-remove &&  \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/* ~/.cache/pip