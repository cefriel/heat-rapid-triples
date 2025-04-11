#!/bin/bash

docker build -f Dockerfile-build -t cefriel/qkg-rapid-triples .

CONTAINER_ID=$(docker run -d cefriel/qkg-rapid-triples)
docker cp $CONTAINER_ID:/usr/share/nginx/html/qkg-rapid-triples/. ./dist/

docker stop $CONTAINER_ID
