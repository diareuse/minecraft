FROM eclipse-temurin:latest@sha256:656533f346d29cee151e2a7b697c84c878ea40cc9d04ba8bab59784d8c1e6299

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
