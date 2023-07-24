#!/bin/sh

cp kubectl-minio /usr/local/bin
kubectl minio init
kubectl minio proxy -n minio-operator
