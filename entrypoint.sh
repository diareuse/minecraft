#!/bin/zsh
set -ex

handle_signal() {
  echo "Signal received, terminating child process..."
  if [ ! -z "$child_pid" ]; then
    kill -TERM "$child_pid" 2>/dev/null
  fi
  exit 0
}

trap 'handle_signal' SIGTERM SIGINT

PUID=${PUID:-1000}
PGID=${PGID:-1000}

# Handle group
if getent group "$PGID" > /dev/null && [ "$(getent group "$PGID" | cut -d: -f1)" != "minecraft" ]; then
    groupmod -n minecraft "$(getent group "$PGID" | cut -d: -f1)"
fi
if ! getent group minecraft > /dev/null; then
    groupadd -g "$PGID" minecraft
else
    groupmod -g "$PGID" minecraft
fi

# Handle user
if getent passwd "$PUID" > /dev/null && [ "$(getent passwd "$PUID" | cut -d: -f1)" != "minecraft" ]; then
    usermod -l minecraft "$(getent passwd "$PUID" | cut -d: -f1)"
fi
if ! getent passwd minecraft > /dev/null; then
    useradd --shell /bin/bash -u "$PUID" -g "$PGID" -d /opt/minecraft -M minecraft
else
    usermod --shell /bin/bash -u "$PUID" -g "$PGID" -d /opt/minecraft minecraft
fi

chown -R minecraft:minecraft /opt/minecraft
chown -R minecraft:minecraft /app/init
chmod +x /app/init

gosu minecraft /app/init &
child_pid=$!

wait "$child_pid"