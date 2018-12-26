#!/usr/bin/env bash
export $(cat .env | xargs)
set -e

docker run -v ${PWD}:/usr/src/app ${DOCKER_IMAGE_NAME} npm run build