#!/bin/sh

curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.18.1 TARGET_ARCH=arm64 sh -
cd istio-1.18.1
./bin/istioctl install  -f istio-cni-k8s-gateways.yaml -y
