FROM eclipse-temurin:25-jre-noble@sha256:d0d42862bc6cdcb9bc01096d48753b741316f44af2022666833d94f562b58481

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
