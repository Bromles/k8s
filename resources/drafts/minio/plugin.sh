#!/bin/sh

curl https://github.com/minio/operator/releases/download/v5.0.5/kubectl-minio_5.0.5_linux_arm64 -o kubectl-minio
chmod +x kubectl-minio
mv kubectl-minio /usr/local/bin
