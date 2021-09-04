#!/bin/bash
TAG=${1:-latest}
echo "Build $TAG"

docker image rm zilabs/hummingbot-sandbox:$TAG | true
docker build -t zilabs/hummingbot-sandbox:$TAG -f Dockerfile . && \
docker push zilabs/hummingbot-sandbox:$TAG