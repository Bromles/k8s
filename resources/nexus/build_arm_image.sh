#!/bin/sh

docker buildx build --pull \
  --platform "linux/arm64" \
  --tag "bromles/nexus3" \
  --output=type=docker \
  .
