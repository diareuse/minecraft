FROM eclipse-temurin:25-jre-noble@sha256:de05d5a4b0c2aab676d0aef09c835f1f94559d9068cdc2ed3a85c176c686dfec

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
