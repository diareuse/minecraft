FROM eclipse-temurin:17-jre-noble@sha256:c410ffc61fb0e2f3102555c3ca89de7de59177d6eb4593bd5d43d3fb553835b0

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
