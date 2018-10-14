FROM python:slim
MAINTAINER Andrew Vityuk andruwa13@me.com>

RUN apt update && \
    apt upgrade && \
    pip install ansible && \
    apt-get clean && \
	apt-get autoremove && \
	rm -Rf /tmp/* /var/tmp/* /var/lib/apt/lists/* ~/.cache/pip
