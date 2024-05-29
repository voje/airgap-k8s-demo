#!/bin/bash

talosctl --endpoints demo-node0 --nodes demo-node0,demo-node1,demo-node2 etcd status
