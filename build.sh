#!/bin/bash

date=`date +%Y%m%d`
tag=ubuntu_base

echo building $tag
docker build $BUILD_OPTS -t $tag:$date .
docker tag -f $tag:$date $tag:latest

images=$(docker images | grep '<none>' | awk '{print $3}')

if [ "$images" ] ; then
    echo removing untagged images
    docker rmi $images
else
    echo no untagged images to remove
fi
