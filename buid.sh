#!/bin/bash

build() {
  NGINX_VERSION=$1

  TAG=${NGINX_VERSION}

# base
  docker build \
    --compress \
    --squash \
    -t pixelmilk/live \
    --build-arg NGINX_VERSION=${TAG} \
    . || exit $?

# tag
  echo
  echo Tagging pixelmilk/live:${TAG}
  docker tag pixelmilk/live pixelmilk/live:${TAG} \
    || exit $?
}

#     Nginx
build "1.13.5"