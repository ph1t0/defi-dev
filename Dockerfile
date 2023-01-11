FROM alpine:3.17

RUN apk update && apk upgrade
RUN apk add --no-cache boost-dev \
                       build-base \
                       linux-headers \
                       cmake \
                       bash\
                       python3-dev \
                       py3-pip \
                       git \
                       vim

RUN pip3 install --no-cache eth-brownie
