# syntax=docker/dockerfile:1

FROM python:3.10.8-slim-buster

LABEL maintainer="devsecfranklin <frank378@gmail.com>"
LABEL org.opencontainers.image.source="https://github.com/devsecfranklin/talk-template"

ENV DEBIAN_FRONTEND noninteractive
ENV PYTHONPATH=/usr/local/lib/python3.9/site-packages
WORKDIR /workspace
ENV MY_DIR /workspace

COPY . ${MY_DIR}

# Debian packages
RUN \
    apt-get update; \
    apt-get install -y gnupg2;\
    apt-get install -y dialog apt-utils;\
    apt-get install -y lacheck chktex

