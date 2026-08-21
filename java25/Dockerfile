FROM eclipse-temurin:25-jre-noble@sha256:1a99f30a84d58729f1184c1c693f25fb6f91970ddf05395515540bc5773b8edd

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
