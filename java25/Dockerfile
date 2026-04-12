FROM eclipse-temurin:25-jre-noble@sha256:aa8759eb18c5fcab069c62558a6f7e0b26359c29cc889a29ed7e5bbaed6a9ce5

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
