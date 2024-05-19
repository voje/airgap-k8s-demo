#!/bin/bash

mkdir -p registry_data
podman rm -f registry
podman run -d \
    -p 5000:5000 \
    --name registry \
    -v "$(pwd)/registry_data":/var/lib/registry \
    registry:2
