#!/bin/sh

helm repo add portainer https://portainer.github.io/k8s/
helm repo update

helm upgrade -n portainer portainer portainer/portainer \
    --set service.type=LoadBalancer \
    --set tls.force=true
