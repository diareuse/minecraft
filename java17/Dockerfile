FROM eclipse-temurin:17-jre-noble@sha256:76bf6d763e84e4d286d5ee3df61e4adeca214977f83c7d8d2327b93db582dd9d

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
