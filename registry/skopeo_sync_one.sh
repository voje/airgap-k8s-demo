#!/bin/bash

skopeo copy tarball:hardened-flannel-v0.25.1-build20240423.tar docker://localhost:5000/rancher --dest-tls-verify=false
