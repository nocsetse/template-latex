# syntax=docker/dockerfile:1

FROM python:3.10.4-bullseye

ARG BUILD_DATE
ARG USER="franklin"

LABEL maintainer="Franklin <2730246+devsecfranklin@users.noreply.github.com>" \
      org.opencontainers.image.source="https://github.com/devsecfranklin/paper-template" \
      org.label-schema.build-date=$BUILD_DATE

WORKDIR /workspace
ENV MY_DIR /workspace
ADD . /workspace/

#####################
# Add some packages #
#####################
ENV DEBIAN_FRONTEND noninteractive
RUN \
    apt-get update; \
    apt-get install -y dist-utils make libgraphviz-dev; \
    python -m pip install --upgrade pip; \
    python -m pip install -r /workspace/src/requirements.txt 

# CMD ["python", "/workspace/src/train.py" ] 
