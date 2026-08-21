FROM eclipse-temurin:17-jre-noble@sha256:3b76e760cfe4096739b754800e09449b900f40bab4c81859bb02fa37c0b15827

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
