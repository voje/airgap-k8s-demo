#!/bin/bash

podman build . -t hello-there:local

skopeo inspect containers-storage:localhost/hello-there:local > hello-there.metadata.txt
skopeo copy containers-storage:localhost/hello-there:local dir:hello-there
