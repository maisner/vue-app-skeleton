#!/usr/bin/env bash
export $(cat .env | xargs)
set -e

docker build -t ${DOCKER_IMAGE_NAME} .
docker run -it -v ${PWD}:/usr/src/app ${DOCKER_IMAGE_NAME} vue create .