#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then echo "Please run as root." >&2; exit 1; fi

mkdir -p /etc/rancher
mkdir -p /etc/rancher/k3s
cp config.yaml /etc/rancher/k3s/config.yaml

sh k3s-install.sh

kubectl apply -f canal.yaml
