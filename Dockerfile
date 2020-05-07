FROM ubuntu:18.04 as base

RUN apt-get update && \
    apt-get -y install sudo git python-pip

RUN git clone https://github.com/pyenv/pyenv ~/.pyenv