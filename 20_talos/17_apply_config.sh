#!/bin/bash

talosctl apply-config --file controlplane.yaml --endpoints demo-node0 --nodes demo-node0,demo-node1,demo-node2
