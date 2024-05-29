#!/bin/bash

helm pull prometheus-community/kube-prometheus-stack --version 59.0.0

helm push kube-prometheus-stack-59.0.0.tgz oci://registry.demo.local:6000/helm-charts/ --plain-http

regcli ls --reg-url registry.demo.local:6000 | grep kube-prometheus-stack

echo
echo "$ helm show chart oci://registry.demo.local:6000/helm-charts/kube-prometheus-stack --version 59.0.0 --plain-http"
