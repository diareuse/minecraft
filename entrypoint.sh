#!/bin/zsh
set -ex

UID=${UID:-1000}
GID=${GID:-1000}

addgroup -g "$GID" minecraft
adduser -u "$UID" -G minecraft -D -h /opt/minecraft minecraft

chown -R minecraft:minecraft /opt/minecraft

exec su-exec minecraft /opt/minecraft/init
