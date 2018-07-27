#!/bin/bash

VERSION=`cat VERSION`

echo "Docker Hadoop ($VERSION)"

docker run -v $(pwd)/hadoop-$VERSION-src:/hadoop-$VERSION-src jbw/build-hadoop /root/build.sh $VERSION