#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then echo "Please run as root." >&2; exit 1; fi

cp config.yaml /etc/rancher/k3s/config.yaml

sh k3s-intall.sh
