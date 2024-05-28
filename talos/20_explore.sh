#!/bin/bash

source nodes.sh

echo "Health"
talosctl --nodes $node0_ip --endpoints $node0_ip --talosconfig=./talosconfig health

echo "Dashboard"
talosctl --nodes $node0_ip --endpoints $node0_ip --talosconfig=./talosconfig dashboard
