FROM eclipse-temurin:25-jre-alpine

EXPOSE 25565
RUN mkdir -p /opt/minecraft && \
    apk add --no-cache zsh curl su-exec shadow

WORKDIR /opt/minecraft

COPY init.sh init
COPY entrypoint.sh entrypoint
RUN chmod +x init entrypoint

ENTRYPOINT ["zsh","/opt/minecraft/entrypoint"]
