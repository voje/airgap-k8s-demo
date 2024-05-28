#!/bin/bash

images=$(cat kube_prometheus_stack_images.txt)

for img in $images; do
	dst=$(echo $img | sed -E 's#^[^/]+/#registry.demo.local:6000/#')
	echo "[*] Syncing $img --> $dst"
	skopeo copy "docker://$img" "docker://$dst" --dest-tls-verify=false
done
