#!/bin/zsh
set -ex

if [ -z "$MINECRAFT" ]; then
  echo "Error: MINECRAFT environment variable is not set." >&2
  exit 1
fi
if [ -z "$FABRIC_LOADER" ]; then
  echo "Error: FABRIC_LOADER environment variable is not set." >&2
  exit 1
fi
if [ -z "$FABRIC_INSTALLER" ]; then
  echo "Error: FABRIC_INSTALLER environment variable is not set." >&2
  exit 1
fi

function gettop() {
    echo "/opt/minecraft"
}

function download_fabric() {
    local version="$1"
    local T="$(gettop)"
    mkdir -p "$T/bin"
    curl --fail -#L \
      --url "https://maven.fabricmc.net/net/fabricmc/fabric-installer/$version/fabric-installer-$version.jar" \
      --output "$T/bin/fabric-installer.jar"
}

function install_fabric() {
    local T="$(gettop)"
    download_fabric "$FABRIC_INSTALLER"
    java -jar "$T/bin/fabric-installer.jar" server -dir "$T" -mcversion "$MINECRAFT" -downloadMinecraft -loader "$FABRIC_LOADER" -noprofile
}

function start_server() {
    local T="$(gettop)"
    cd "$T" || exit 1
    if [ ! -f "eula.txt" ]; then
      echo "eula=true" > eula.txt
    fi
    java -jar "fabric-server-launch.jar" nogui
}

install_fabric
start_server
