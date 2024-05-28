#!/bin/bash
#
# Certs will include the endpoint SAN (api.demo.local).
# Add the addresses to the DNS (or /etc/hosts)

registry="http://registry.demo.local:6000"

talosctl gen config \
	demo \
	https://api.demo.local:6443 \
	--registry-mirror docker.io=$registry \
	--registry-mirror gcr.io=$registry \
	--registry-mirror ghcr.io=$registry \
	--registry-mirror registry.k8s.io=$registry

# Deploy VMs. If using OpenStack, inject controlplane.yaml as user-data.
echo "[*] Configure NTP"
echo "[*] allowSchedulingOnControlPlanes: true"
echo "[*] $ export TALOSCONFIG=$(realpath talosconfig)"
