#!/usr/bin/env bash
export $(cat .env | xargs)
set -e

docker run -v ${PWD}:/usr/src/app -p ${DEV_SERVER_PORT}:8080 ${DOCKER_IMAGE_NAME} npm run serve