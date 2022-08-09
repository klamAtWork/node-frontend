#!/usr/bin/env bash

set -e
set -x

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t klamatwork/node-frontend:12 .

docker build -t klamatwork/node-frontend:latest .

docker push klamatwork/node-frontend:12

docker push klamatwork/node-frontend:latest
