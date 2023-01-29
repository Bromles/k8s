#!/bin/sh

helm install --namespace keycloak -f values.yaml keycloak codecentric/keycloak
