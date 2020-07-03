FROM ubuntu:18.04 as base

COPY ./requirements.txt /tmp/requirements.txt

RUN apt-get update && \
    apt-get -y install sudo git python-pip

RUN git clone https://github.com/pyenv/pyenv /home/ubuntu/.pyenv

RUN pip install -r /tmp/requirements.txt
