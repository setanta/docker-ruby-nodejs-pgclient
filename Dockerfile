FROM ruby:2.4-alpine3.6

RUN echo "@edge http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories

RUN apk add --no-cache \
    build-base \
    curl \
    linux-headers \
    nodejs \
    nodejs-npm \
    postgresql-client@edge \
    postgresql-dev@edge \
    ruby-dev \
    tzdata \
    yarn

RUN rm -rf /tmp/* /var/lib/cache/apk/*
