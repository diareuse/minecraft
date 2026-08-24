FROM eclipse-temurin:17-jre-noble@sha256:5726444f65e67c407bac4ff1e036b475051f50bb3840273e81814e77c6fa8ee3

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
