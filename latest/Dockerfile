FROM eclipse-temurin:latest@sha256:b4a48ff72ab09c8ecfc3ae35b3f9b96750437eb436bb1d9dc5cd6e1a885f7511

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
