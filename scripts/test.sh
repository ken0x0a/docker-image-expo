#!/bin/bash

IMAGE_TAG=$1

str=`docker run --rm $IMAGE_TAG whoami 2>&1` # expo whoami

if [[ $str == *"Not logged in"* ]]; then
  echo "It works ^_^b";
else
  echo 'Couldn'\''t find text "Not logged in"';
  exit 1
fi
