FROM node:16-bullseye

LABEL maintainer="Milan Sulc <sulcmil@gmail.com>"

RUN sed -i -E 's#https?://(deb|security)\.debian\.org#http://archive.debian.org#g' /etc/apt/sources.list /etc/apt/sources.list.d/*.list 2>/dev/null; \
    echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/99archive && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y git curl zip bzip2 make && \
    apt-get clean -y && apt-get autoclean -y && apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* /var/lib/log/* /tmp/* /var/tmp/*
