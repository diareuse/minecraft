FROM eclipse-temurin:17-jre-noble@sha256:b1e6062e919b4fc402f46320960a64c2e832a0439c961af765061196b11b6a49

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
