FROM eclipse-temurin:17-jre-noble@sha256:d7e9a790837b18a33cab9820221a9b1c601b1a89d54b94586bf56b743bedc70f

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
