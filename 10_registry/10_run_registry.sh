#!/bin/bash

mkdir -p registry_data
docker rm -f registry
docker run -d \
    -p 6000:5000 \
    --name registry \
    -v "$(pwd)/registry_data":/var/lib/registry \
    -e REGISTRY_STORAGE_DELETE_ENABLED=TRUE \
    registry:2
