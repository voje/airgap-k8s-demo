#!/bin/bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update prometheus-community

helm search repo prometheus-community

helm pull prometheus-community/kube-prometheus-stack --version 59.0.0

helm push kube-prometheus-stack-59.0.0.tgz oci://localhost:6000/helm-charts/ --plain-http

regcli ls --reg-url localhost:6000

helm show values oci://localhost:6000/helm-charts/kube-prometheus-stack --version 59.0.0 --plain-http
