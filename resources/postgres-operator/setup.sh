#!/bin/sh

kubectl apply -k kustomize/install/namespace
kubectl apply --server-side -k kustomize/install/default
