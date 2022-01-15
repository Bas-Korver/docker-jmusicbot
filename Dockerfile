FROM eclipse-temurin:17-jre-focal

ARG JMUSICBOT_VERSION
ARG BUILDDATE
LABEL build_version="docker-jmusicbot version: $JMUSICBOT_VERSION, build date: $BUILDDATE"
LABEL maintainer="bas0korver"

WORKDIR /opt/jmusicbot
ADD https://github.com/jagrosh/MusicBot/releases/download/$JMUSICBOT_VERSION/JMusicBot-$JMUSICBOT_VERSION.jar ./JMusicBot.jar

COPY docker-entrypoint.sh ./

RUN chmod +x ./docker-entrypoint.sh
RUN mkdir config

VOLUME [ "/opt/jmusicbot/config" ]

ENV VERSION=$JMUSICBOT_VERSION
ENV DATE=$BUILDDATE

ENTRYPOINT [ "./docker-entrypoint.sh" ]