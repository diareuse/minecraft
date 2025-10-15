#!/bin/zsh

docker buildx build \
  --platform linux/amd64,linux/arm64/v8,linux/riscv64,linux/ppc64le,linux/s390x \
  -t diareuse/minecraft:fabric-java17 \
  -f Dockerfile.java17 \
  --push .

docker buildx build \
  --platform linux/amd64,linux/arm64/v8,linux/riscv64,linux/ppc64le,linux/s390x \
  -t diareuse/minecraft:fabric-java21 \
  -f Dockerfile.java21 \
  --push .

docker buildx build \
  --platform linux/amd64,linux/arm64/v8,linux/riscv64,linux/ppc64le,linux/s390x \
  -t diareuse/minecraft:fabric \
  -f Dockerfile \
  --push .