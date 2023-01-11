FROM ubuntu:22.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip \
    nodejs \
    npm \
    vim \
    git \
 && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache eth-brownie\
 && brownie pm install OpenZeppelin/openzeppelin-contracts@4.8.0

RUN npm install -g ganache-cli
