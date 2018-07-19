#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build ./docker/ --build-arg VCS_REF=`git rev-parse --short HEAD` -t janedoegva/nginx:$BRANCH

docker push janedoegva/nginx:$BRANCH
