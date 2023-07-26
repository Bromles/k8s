#!/bin/sh

# Enable ARM support
docker run --rm --privileged multiarch/qemu-user-static --reset --persistent yes

# Create 'mybuilder' if not exist, set as default builder
docker buildx inspect mybuilder || docker buildx create --name mybuilder
docker buildx use mybuilder

# Start builder
docker buildx inspect --bootstrap
