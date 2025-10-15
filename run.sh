#!/bin/zsh

# build all archs
#docker buildx build --platform linux/amd64,linux/arm64/v8,linux/riscv64,linux/ppc64le,linux/s390x -t diareuse/minecraft:fabric --push .

docker build -t diareuse/minecraft:fabric .
docker run --name "minecraft-fabric" --rm \
  -e MINECRAFT="1.21.10" -e FABRIC_LOADER="0.17.3" -e FABRIC_INSTALLER="1.1.0" -p 25565:25565 \
  -e PUID=501 -e PGID=20 \
  -v ./minecraft:/opt/minecraft \
  diareuse/minecraft:fabric