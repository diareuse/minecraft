FROM eclipse-temurin:latest@sha256:c42fecf62f32725c65cfea284c012526d6fb31cc78123c740ebdc1cfd2dced12

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
