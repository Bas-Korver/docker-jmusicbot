FROM eclipse-temurin:17-jre-focal

ARG JMUSICBOT_VERSION
ARG BUILDDATE

LABEL org.opencontainers.image.title="docker-jmusicbot"
LABEL org.opencontainers.image.description="A Dockerized version of JMusicBot for Discord"
LABEL org.opencontainers.image.version="$JMUSICBOT_VERSION"
LABEL org.opencontainers.image.created="$BUILDDATE"
LABEL org.opencontainers.image.authors="https://hub.docker.com/u/bas0korver"
LABEL org.opencontainers.image.url="https://github.com/Bas-Korver/docker-jmusicbot"
LABEL org.opencontainers.image.licenses="Apache-2.0"

WORKDIR /opt/jmusicbot
ADD https://github.com/jagrosh/MusicBot/releases/download/$JMUSICBOT_VERSION/JMusicBot-$JMUSICBOT_VERSION.jar ./JMusicBot.jar

COPY docker-entrypoint.sh ./

RUN chmod +x ./docker-entrypoint.sh && \
    mkdir config

VOLUME [ "/opt/jmusicbot/config" ]

ENV VERSION=$JMUSICBOT_VERSION
ENV DATE=$BUILDDATE

ENTRYPOINT [ "./docker-entrypoint.sh" ]
