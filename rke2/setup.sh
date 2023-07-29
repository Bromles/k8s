#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then echo "Please run as root." >&2; exit 1; fi

mkdir -p /etc/rancher
mkdir -p /etc/rancher/rke2
cp config.yaml /etc/rancher/rke2/config.yaml
cp registries.yaml /etc/rancher/rke2/registries.yaml

sh rke2-install.sh
