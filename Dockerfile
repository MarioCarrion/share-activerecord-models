FROM ruby:2.2

RUN apt-get update -qq && apt-get install --fix-missing -y \
  build-essential \
  cmake \
  && apt-get clean \
  && apt-get autoremove

RUN mkdir -p /gem/bin
WORKDIR /gem/

ADD bin/docker_init.sh /gem/bin/docker_init.sh

ENV BUNDLE_PATH /bundle/
