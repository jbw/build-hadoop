#!/bin/bash

VERSION=${1}

cd hadoop-$VERSION-src

mvn -q -B package -Pdist,native -DskipTests -Dtar 

if [[ $? -eq 0 ]]; then
  echo -e "\n\nHadoop $VERSION build complete.\n\n"
else
  echo -e "\n\nHadoop $VERSION build failed.\n\n"
fi
