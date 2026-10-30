FROM eclipse-temurin:17-jre-noble@sha256:b3e1d0486f09293b2455aed02d396d4b6b5ea9b0e8c7c065c297cfef453b0116

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
