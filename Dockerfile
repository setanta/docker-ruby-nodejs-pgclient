FROM alpine:3.6

RUN apk upgrade --update-cache

RUN echo "@v3.5 http://dl-4.alpinelinux.org/alpine/v3.5/main" >> /etc/apk/repositories
RUN echo "@edge http://dl-4.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories

RUN apk add --update \
    build-base \
    curl \
    libffi-dev \
    libxml2-dev \
    libxslt-dev \
    linux-headers \
    nodejs \
    nodejs-npm \
    postgresql-client@edge \
    postgresql-dev@edge \
    ruby@v3.5 \
    ruby-dev@v3.5 \
    tzdata \
    yarn \
    zlib-dev

RUN gem update --no-rdoc --no-ri
RUN gem install --no-rdoc --no-ri bundler
RUN rm -rf /tmp/* /var/lib/cache/apk/*
