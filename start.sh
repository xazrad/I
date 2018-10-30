#!/usr/bin/env bash
mkdir -p /opt/infographika_web/static \
    && mkdir -p /opt/infographika_web/db \
    && apt-get install -y git-core \
    && apt-get install -y docker.io \
    && curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose \
    && docker login registry.gitlab.com -u gitlab+deploy-token-24148 -p BEBV7qg4-mEzjYYHZEc1 \
    && cd /opt/infographika_web \
    && git clone https://github.com/xazrad/I.git \
    && cd /opt/infographika_web/I \
    && docker-compose up -d --build