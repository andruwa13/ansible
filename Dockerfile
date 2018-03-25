FROM python:slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ansible \
    && rm -rf /var/lib/apt/lists/*
