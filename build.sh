#!/bin/zsh

docker buildx build \
  --platform linux/amd64,linux/arm64/v8,linux/riscv64,linux/ppc64le,linux/s390x \
  -t diareuse/minecraft:fabric-java17 \
  -f java17/Dockerfile \
  --push .

docker buildx build \
  --platform linux/amd64,linux/arm64/v8,linux/riscv64,linux/ppc64le,linux/s390x \
  -t diareuse/minecraft:fabric-java21 \
  -f java21/Dockerfile \
  --push .

docker buildx build \
  --platform linux/amd64,linux/arm64/v8,linux/riscv64,linux/ppc64le,linux/s390x \
  -t diareuse/minecraft:fabric-java25 \
  -f java25/Dockerfile \
  --push .

docker buildx build \
  --platform linux/amd64,linux/arm64/v8,linux/riscv64,linux/ppc64le,linux/s390x \
  -t diareuse/minecraft:fabric \
  -f latest/Dockerfile \
  --push .
