#!/bin/bash

IMAGE_NAME=$1
# echo $IMAGE_NAME
GIT_COMMIT_MSG=$2
EXPO_CLI_VERSION=$( echo $GIT_COMMIT_MSG | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+' )
# echo $EXPO_CLI_VERSION
NODE_VERSION=10.16.3

if [ ! $IMAGE_NAME ]; then
  echo 'IMAGE_NAME is not defined!'
  exit 1
fi
if [ ! $EXPO_CLI_VERSION ]; then
  echo 'EXPO_CLI_VERSION is not defined!'
  exit 1
fi

docker build \
  --cache-from=$IMAGE_NAME
  --build-arg=NODE_VERSION=$NODE_VERSION \
  --build-arg=EXPO_CLI_VERSION=$EXPO_CLI_VERSION \
  --tag=$IMAGE_NAME:cli-${EXPO_CLI_VERSION}_node-$NODE_VERSION \
  --tag=$IMAGE_NAME:cli-$EXPO_CLI_VERSION \
  --tag=$IMAGE_NAME:$EXPO_CLI_VERSION \
  --tag=$IMAGE_NAME:latest \
  .