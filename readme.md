# Minecraft Fabric Server in Docker

> [!IMPORTANT]
> **Do not change the `server-port` in the `server.properties` file.**
>
> The Docker container exposes port `25565` by default. If you need to use a different port, you
> must change the port mapping in your `docker run` command or `docker-compose.yml` file.
>
> **Why?** The Docker container is configured to expose the Minecraft server on port `25565`. When
> you run the container, you map a port from your host machine to this internal port. If you change
> the port in `server.properties`, the Minecraft server inside the container will listen on a
> different port, but the Docker port mapping will still be pointing to the original port (`25565`),
> and you won\'t be able to connect.
>
> **Correct way to change the port:**
>
> If you want to run the server on port `25570` on your host machine, change the port mapping in
> your `docker` command:
>
> ```bash
> # Incorrect
> # docker run -p 25565:25565 ... (and changing server.properties to 25570)
>
> # Correct
> docker run -p 25570:25565 ...
> ```
>
> Or in your `docker-compose.yml`:
>
> ```yaml
> # Incorrect
> # ports:
> #   - "25565:25565" # (and changing server.properties to 25570)
>
> # Correct
> ports:
>   - "25570:25565"
> ```

This repository contains the necessary files to build a Docker image for a Minecraft Fabric server.

## Image

The Docker image is available on Docker Hub: `diareuse/minecraft-fabric:latest`

## Dependencies

The only dependency is a container runtime that can run Docker images. This includes, but is not
limited to:

* [Docker](https://docs.docker.com/engine/install/)
* [Podman](https://podman.io/getting-started/installation)
* [containerd](https://containerd.io/docs/getting-started/)

## Environment Variables

| Variable           | Description                                  | Default |
|--------------------|----------------------------------------------|---------|
| `MINECRAFT`        | The version of Minecraft to install.         |         |
| `FABRIC_LOADER`    | The version of the Fabric loader to use.     |         |
| `FABRIC_INSTALLER` | The version of the Fabric installer to use.  |         |
| `PUID`             | The user ID to run the Minecraft server as.  | `1000`  |
| `PGID`             | The group ID to run the Minecraft server as. | `1000`  |

## User and Group Management

To avoid permission issues with the data volume (`/opt/minecraft`), you should run the container
with the user and group ID (`PUID` and `PGID`) of your own user.

### Linux and macOS

You can get your current user and group ID by running the following commands in your terminal:

```bash
# Get your User ID
id -u
# Get your Group ID
id -g
```

### Windows

If you are using Docker Desktop for Windows, the default values of `PUID=1000` and `PGID=1000` are
generally sufficient and you don\'t need to change them.

## Usage

### 1. Using `docker run`

#### Linux and macOS

```bash
docker run -d \
  -e PUID=$(id -u) \
  -e PGID=$(id -g) \
  -e MINECRAFT="1.21.10" \
  -e FABRIC_LOADER="0.17.3" \
  -e FABRIC_INSTALLER="1.1.0" \
  -p 25565:25565 \
  -v /path/to/your/minecraft/data:/opt/minecraft \
  --name minecraft-fabric \
  diareuse/minecraft-fabric:latest
```

#### Windows

```bash
docker run -d \
  -e PUID=1000 \
  -e PGID=1000 \
  -e MINECRAFT="1.21.10" \
  -e FABRIC_LOADER="0.17.3" \
  -e FABRIC_INSTALLER="1.1.0" \
  -p 25565:25565 \
  -v C:\path\to\your\minecraft\data:/opt/minecraft \
  --name minecraft-fabric \
  diareuse/minecraft-fabric:latest
```

### 2. Using `docker-compose`

Create a `docker-compose.yml` file. This is the same for all operating systems.

```yaml
services:
  minecraft:
    image: diareuse/minecraft-fabric:latest
    environment:
      - MINECRAFT=${MINECRAFT}
      - FABRIC_LOADER=${FABRIC_LOADER}
      - FABRIC_INSTALLER=${FABRIC_INSTALLER}
      - PUID=${PUID}
      - PGID=${PGID}
    ports:
      - "25565:25565"
    volumes:
      - ${MINECRAFT_DATA_PATH}:/opt/minecraft
```

Then create a `.env` file next to it to configure the variables.

### 3. Using `docker-compose` with a `.env` file

This is the recommended approach.

#### Linux and macOS

Create a `.env` file with the following content. You can get your IDs by running `id -u` and
`id -g`.

```
MINECRAFT_DATA_PATH=/path/to/your/minecraft/data
MINECRAFT=1.21.10
FABRIC_LOADER=0.17.3
FABRIC_INSTALLER=1.1.0
PUID=1000 # Replace with your user ID
PGID=1000 # Replace with your group ID
```

#### Windows

Create a `.env` file with the following content:

```
MINECRAFT_DATA_PATH=C:\path\to\your\minecraft\data
MINECRAFT=1.21.10
FABRIC_LOADER=0.17.3
FABRIC_INSTALLER=1.1.0
PUID=1000
PGID=1000
```

After creating both `docker-compose.yml` and `.env` files, run `docker-compose up -d`.

This approach allows you to easily configure the path to your Minecraft data without modifying the
`docker-compose.yml` file.
