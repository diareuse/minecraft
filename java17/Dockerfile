FROM eclipse-temurin:17-jre-noble@sha256:91a6899f247c7009ef6570bafa3c22e0157011a2295a06d32fe77554446c86df

EXPOSE 25565
RUN mkdir -p /app
RUN mkdir -p /opt/minecraft
RUN apt-get update && apt-get install -y --no-install-recommends zsh curl gosu

WORKDIR /app

COPY init.sh init
COPY entrypoint.sh entrypoint
ENTRYPOINT ["/bin/zsh","/app/entrypoint"]
