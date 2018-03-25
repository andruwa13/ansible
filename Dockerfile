FROM python:slim

RUN pip install ansible && \
    rm -rf ~/.cache/pip
