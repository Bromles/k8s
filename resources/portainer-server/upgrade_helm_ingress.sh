#!/bin/sh

helm repo add portainer https://portainer.github.io/k8s/
helm repo update

helm upgrade -n portainer portainer portainer/portainer \
    --set service.type=ClusterIP \
    --set ingress.enabled=true \
    --set ingress.ingressClassName=nginx \
    --set ingress.annotations."nginx\.ingress\.kubernetes\.io/backend-protocol"=HTTPS \
    --set ingress.hosts[0].host=portainer.rock-5b.local \
    --set ingress.hosts[0].paths[0].path="/"
