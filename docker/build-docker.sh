#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-bitdollarpay/bitdollard-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bitdollard docker/bin/
cp $BUILD_DIR/src/bitdollar-cli docker/bin/
cp $BUILD_DIR/src/bitdollar-tx docker/bin/
strip docker/bin/bitdollard
strip docker/bin/bitdollar-cli
strip docker/bin/bitdollar-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
