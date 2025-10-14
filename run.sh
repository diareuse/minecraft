#!/bin/zsh

docker build -t diareuse/minecraft-fabric .
# --rm \
docker run --name "minecraft-fabric" \
  -e MINECRAFT="1.21.10" -e FABRIC_LOADER="0.17.3" -e FABRIC_INSTALLER="1.1.0" -p 25565:25565 \
  -e UID=501 -e GID=20 \
  -v ./minecraft:/opt/minecraft \
  diareuse/minecraft-fabric