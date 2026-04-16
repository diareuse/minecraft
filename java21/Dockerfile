FROM eclipse-temurin:21-jre-noble@sha256:420374e45e8e9dce3057e768c87a3e8ba58e815049511d8df95ca88a041ec82b

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
