#!/bin/bash

skopeo copy docker://docker.io/voje/toolbox:0.0.9 docker://localhost:6000/voje/toolbox:0.0.9 --dest-tls-verify=false
