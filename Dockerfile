FROM node:9-stretch

LABEL maintainer="john.li@planetinnovation.com.au"

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" \
    apt-get install -y --no-install-recommends \
    chromium \
    libgconf-2-4 \
    openjdk-8-jre-headless \
    && rm -rf /var/lib/apt/lists/* \
    yarn global add @vue/cli

EXPOSE 8080

ENV CHROME_BIN /usr/bin/chromium