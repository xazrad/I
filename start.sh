#!/usr/bin/env bash
mkdir -p /opt/infographika_web/static \
    && mkdir -p /opt/infographika_web/db \
    && apt-get install -y git-core \
    && cd /opt/infographika_web \
    && git clone git@github.com:xazrad/I.git . \
    && docker-compose up -d --build