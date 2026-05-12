FROM eclipse-temurin:21-jre-noble@sha256:d093fd300f28471656f523ae8ea59860c29d437a82f5cfba02a102d1b316f6b4

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
