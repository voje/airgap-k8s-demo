#!/bin/bash

set -u

NODE=${1:-'demo-node0'}

talosctl dashboard \
	--cluster demo \
	--endpoints demo-node0 \
	--nodes "$NODE",demo-node1,demo-node2
