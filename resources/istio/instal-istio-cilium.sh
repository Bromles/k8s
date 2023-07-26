#!/bin/sh

curl -L https://github.com/cilium/istio/releases/download/1.10.6-1/cilium-istioctl-1.10.6-1-linux-arm64.tar.gz | tar xz
KUBECONFIG=/etc/rancher/k3s/k3s.yaml ./cilium-istioctl install -y
