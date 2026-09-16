FROM eclipse-temurin:17-jre-noble@sha256:4e04629bf268320c6b33d178ebebe0d830bf7ddd141b12e6100006f979621b9a

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
