#!/bin/bash

set -u
[ -n "$1" ] && NODE="$1"

talosctl dashboard \
	--cluster demo \
	--endpoints demo-node0 \
	--nodes "$NODE"
