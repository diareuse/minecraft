FROM eclipse-temurin:21-jre-noble@sha256:6deed76196f52112f69024d58040e035f84ea938b768c7a090bd9fe2809c8566

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
