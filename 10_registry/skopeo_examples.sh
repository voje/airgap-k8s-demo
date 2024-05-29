#!/bin/bash

# Skopeo examples

skopeo copy --dest-tls-verify=false \
	docker://registry.k8s.io/coredns/coredns:v1.11.1  \
	docker://localhost:6000/coredns/coredns:v1.11.1

skopeo inspect docker://registry.k8s.io/coredns/coredns:v1.11.1 --tls-verify=false
skopeo inspect docker://localhost:6000/coredns/coredns:v1.11.1 --tls-verify=false


skopeo copy --dest-tls-verify=false \
	docker://registry.k8s.io/coredns/coredns:v1.11.1  \
	docker://localhost:6000/wrongname:latest

skopeo inspect docker://localhost:6000/wrongname:latest --tls-verify=false
