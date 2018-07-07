FROM python:slim
MAINTAINER Andrew Vityuk andruwa13@me.com>
ENV VERSION $CI_COMMIT_REF_SLUG

RUN pip install ansible==${VERSION} && \
    rm -rf ~/.cache/pip
