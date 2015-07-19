#!/bin/bash

date=`date +%Y%m%d`
tag=ubuntu_base:$date

echo building $tag
docker build $BUILD_OPTS -t $tag .
