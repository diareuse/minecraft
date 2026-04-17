FROM eclipse-temurin:25-jre-noble@sha256:a051234f864d7ab78bf0188c3c540ac06c711a3b566f00f246be37073cc99dce

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
