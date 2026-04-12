FROM eclipse-temurin:21-jre-noble@sha256:44f34bf806367018bae981328ca0fa993a59040abeaa015f2f406701a7ee4d6c

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
