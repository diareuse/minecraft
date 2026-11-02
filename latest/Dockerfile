FROM eclipse-temurin:latest@sha256:83f4a7fc27df94dcc7b8de04d14cbbba8da14406f921e966969c3b09000aa507

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
