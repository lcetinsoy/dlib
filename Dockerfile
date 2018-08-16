FROM ubuntu:16.04

WORKDIR /usr/src/app

COPY . .


RUN apt-get update && \
    apt-get install gcc g++ python-setuptools python python-dev cmake -y && \
    python setup.py install

