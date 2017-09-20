#!/bin/bash

build() {
  NGINX_VERSION=$1
  VERSION=$2

  TAG=${NGINX_VERSION}-${VERSION}

# base
  docker build \
    --compress \
    --squash \
    -t pixelmilk/live \
    --build-arg NGINX_VERSION=${NGINX_VERSION} \
    . || exit $?

# tag
  echo
  echo Tagging pixelmilk/live:${TAG}
  docker tag pixelmilk/live pixelmilk/live:${TAG} \
    || exit $?
}

#     Nginx     # Version
build "1.13.5"  "0.0.2"