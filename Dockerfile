FROM scardon/ruby-node-alpine:2.3.4

RUN echo "@edge http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories

RUN apk add --no-cache \
    curl \
    build-base \
    linux-headers \
    postgresql-dev \
    postgresql-client@edge

RUN gem update --no-rdoc --no-ri

RUN rm -rf var/cache/apk/*

