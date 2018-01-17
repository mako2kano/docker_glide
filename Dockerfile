FROM golang:1.8

MAINTAINER Makoto <mako.limone@gmail.com>

# install add-apt-repository
#RUN apt-get install -y --no-install-recommends python-software-properties ca-certificates \
#    && apt-get install -y --no-install-recommends software-properties-common

# install glide
#RUN add-apt-repository ppa:masterminds/glide \
#    && apt-get update \
#    && apt-get install -y --no-install-recommends \
#        glide \
#    && rm -rf /var/lib/apt/lists/*
RUN curl https://glide.sh/get | sh

# add go packages
RUN go get -u golang.org/x/tools/cmd/benchcmp

