#!/bin/sh

if [ "$(id -u)" -ne 0 ]; then echo "Please run as root." >&2; exit 1; fi

mkdir -p /etc/rancher
mkdir -p /etc/rancher/k3s
cp config-calico.yaml /etc/rancher/k3s/config.yaml

sh k3s-install.sh

#kubectl apply -f ../resources/calico/calico
#kubectl apply -f ../resources/metallb/metallb-native.yaml
#kubectl apply -f ../resources/metallb/ip-address-pool.yaml
#kubectl apply -f ../resources/metallb/l2-advertisement.yaml
#kubectl apply -f ../resources/ingress-nginx/deploy.yaml
#kubectl annotate ingressclasses.networking.k8s.io nginx ingressclass.kubernetes.io/is-default-class="true"
#kubectl apply -f ../resources/longhorn/longhorn.yaml
