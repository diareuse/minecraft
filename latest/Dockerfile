FROM eclipse-temurin:latest@sha256:c7cf8f103714da175842713f705e2a70551daa74f7b5cb47f40059553e6b9cde

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
