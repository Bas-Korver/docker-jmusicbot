[![Image Size](https://img.shields.io/docker/image-size/the0doctor/jmusicbot?sort=semver&style=for-the-badge)](https://hub.docker.com/layers/bas0korver/jmusicbot/latest/images/sha256-bafec6548786c0ea50fdd10f4b05224264fdbaf1951a4ae01c5dbbd3337696f2?context=explore)
[![Docker Pulls](https://img.shields.io/docker/pulls/bas0korver/jmusicbot?style=for-the-badge)](https://hub.docker.com/r/bas0korver/jmusicbot)
[![License](https://img.shields.io/github/license/Bas-Korver/docker-jmusicbot?style=for-the-badge)](https://github.com/Bas-Korver/docker-jmusicbot/blob/master/LICENSE)
[![Version](https://img.shields.io/docker/v/bas0korver/jmusicbot?sort=semver&style=for-the-badge)](https://hub.docker.com/layers/bas0korver/jmusicbot/latest/images/sha256-bafec6548786c0ea50fdd10f4b05224264fdbaf1951a4ae01c5dbbd3337696f2?context=explore)
[![Build](https://img.shields.io/github/workflow/status/Bas-Korver/docker-jmusicbot/Build%20Docker%20image%20latest%20version?style=for-the-badge)](https://github.com/Bas-Korver/docker-jmusicbot/actions/workflows/docker-build-image.yml)

# [bas0korver/jmusicbot](https://hub.docker.com/repository/docker/bas0korver/jmusicbot)
A Dockerized version of the JMusicBot application by [jagrosh](https://github.com/jagrosh/MusicBot), for running your own Discord music bot

<img src="https://i.imgur.com/zrE80HY.png" height="200" width="200">

## Supported architectures
The docker image has been built for multiple architectures, the ones supported are listed below:
| Architecture |
|--------------|
| amd64        |
| arm/v7       |
| arm64        |
| ppc64le      |
| s390x        |

## Setup
1. Download/copy the docker-compose.yml and change any values that need to be changed
```yml
version: "3.9"

services:
  jmusicbot:
    image: bas0korver/jmusicbot:latest
    container_name: jmusicbot
    restart: unless-stopped
    volumes:
     - ./config:/opt/jmusicbot/config
```
3. If you already have a preconfigured config.txt and serversettings.json place those in the defined volume location.
4. Run `docker-compose up -d` or `docker compose up -d` depending on the installed docker compose version.
5. If no configuration files are detected the image will automatically download one from an [example](https://github.com/jagrosh/MusicBot/releases/download/0.2.9/config.txt)
