#!/bin/bash

docker build -f Dockerfile-build -t cefriel/heat-rapid-triples .

CONTAINER_ID=$(docker run -d cefriel/heat-rapid-triples)

rm -r ./dist

docker cp $CONTAINER_ID:/usr/share/nginx/html/heat-rapid-triples/. ./dist/

docker stop $CONTAINER_ID
