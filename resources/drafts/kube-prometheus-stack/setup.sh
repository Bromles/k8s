#!/bin/sh

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

kubectl create ns monitoring
helm install --namespace monitoring -f values.yaml kube-prometheus-stack prometheus-community/kube-prometheus-stack
