#!/bin/bash

push() {
  NGINX_VERSION=$1
  VERSION=$2

  TAG=${NGINX_VERSION}-${VERSION}

# base
  echo
  echo Pushing pixelmilk/live:${TAG}
  docker push pixelmilk/live:${TAG} || exit $?

  echo
  echo Pushing pixelmilk/live:latest
  docker push pixelmilk/live:latest || exit $?
}

# login docker before push
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"

#    Nginx    # Version
push "1.13.5" "0.0.2"
