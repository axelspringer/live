#!/bin/bash

push() {
  NGINX_VERSION=$1

  TAG=${NGINX_VERSION}

# base
  echo
  echo Pushing pixelmilk/live:${TAG}
  docker push pixelmilk/live:${TAG} || exit $?
}

# login docker before push
docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD"

#    Mesos version
push "1.13.5"
