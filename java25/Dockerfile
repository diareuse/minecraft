FROM eclipse-temurin:25-jre-noble@sha256:1e80201efc21b839ebc9b448b1f9b16aa5f036dd2885148282fe5dae38684fe1

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
