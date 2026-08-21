FROM eclipse-temurin:21-jre-noble@sha256:b251c6e60516a48d6511a33b9afc2f8b1a427e53a598b16c1f29390c9bf916bd

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
