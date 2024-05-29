#!/bin/bash

kubectl create ns mon || true

helm install -n mon kube-prom-stack "oci://registry.demo.local:6000/helm-charts/kube-prometheus-stack" --version 59.0.0 --plain-http
