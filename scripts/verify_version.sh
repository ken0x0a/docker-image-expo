#!/bin/sh

# git log --format=%B -n 1
GIT_COMMIT_MSG=$(git log --format=%B -n 1)
# GIT_COMMIT_MSG=$1

version=$( echo $GIT_COMMIT_MSG | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+' )
[[ $version =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] || exit 1
