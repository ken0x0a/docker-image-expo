#!/bin/bash

GIT_COMMIT_MSG=$1
# git log --format=%B -n 1
# GIT_COMMIT_MSG=$(git log --format=%B -n 1)

version=$( echo $GIT_COMMIT_MSG | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+' )
if [[ $version =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo $version
else
  echo "INVALID VERSION"
  exit 1
fi
