#!/bin/bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo update prometheus-community

helm search repo prometheus-community | grep kube-prometheus-stack

