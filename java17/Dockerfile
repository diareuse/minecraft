FROM eclipse-temurin:17-jre-noble@sha256:e7b16e1071bb3f338079c78fa65c7a3c95d5b5e5abeb2d1d9c494c535c819647

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
