FROM python:slim
MAINTAINER Andrew Vityuk andruwa13@me.com>

RUN apt-get update && \
    apt-get -y --no-install-recommends --allow-unauthenticated install \
		curl \
		openssh-client && \
		pip install ansible && \
    rm -rf ~/.cache/pip && \
    apt-get clean && \
  	apt-get autoremove && \
    rm -Rf /tmp/* /var/tmp/* /var/lib/apt/lists/*
