#!/bin/bash

talosctl kubeconfig talos.kube --nodes demo-node0 --endpoints demo-node0

echo "[*] export KUBECONFIG=$(realpath talos.kube)"
