#!/bin/bash

# Pull the helm chart first, we can't pass --plain-http to the images plugin

helm pull oci://registry.demo.local:6000/helm-charts/kube-prometheus-stack --plain-http

helm images get kube-prometheus-stack-59.0.0.tgz | tee kube_prometheus_stack_images.txt
