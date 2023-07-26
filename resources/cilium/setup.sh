#!/bin/sh

install_cli_cilium.sh
install_cli_hubble.sh
KUBECONFIG=/etc/rancher/k3s/k3s.yaml cilium install
KUBECONFIG=/etc/rancher/k3s/k3s.yaml cilium status --wait
KUBECONFIG=/etc/rancher/k3s/k3s.yaml cilium hubble enable
KUBECONFIG=/etc/rancher/k3s/k3s.yaml cilium hubble enable --ui
KUBECONFIG=/etc/rancher/k3s/k3s.yaml cilium status --wait
KUBECONFIG=/etc/rancher/k3s/k3s.yaml cilium connectivity test