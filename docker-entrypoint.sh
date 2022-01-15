#!/bin/sh

echo "Starting JMusicBot made by ${bold}jagrosh${bold} (https://github.com/jagrosh/MusicBot)
and Dockerized by ${bold}Bas-Korver${bold} (https://github.com/Bas-Korver/docker-jmusicbot)
JMusicBot version: $VERSION, Dockerized on: $DATE"
echo ""

FILE=/opt/jmusicbot/config/config.txt
if [ ! -f "$FILE" ]; then
    echo "No config.txt found, downloading example config from
    https://github.com/jagrosh/MusicBot/releases/download/0.2.9/config.txt"
    
    curl -L https://github.com/jagrosh/MusicBot/releases/download/0.2.9/config.txt -o /opt/jmusicbot/config/config.txt
    echo ""
fi

cd /opt/jmusicbot/config

exec java -Dnogui=true -jar /opt/jmusicbot/JMusicBot.jar