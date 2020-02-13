FROM ruby:2.6.0-alpine
ENV LANG C.UTF-8

# Install essential packages
RUN apk --update --no-cache add build-base alpine-sdk tzdata \
    git nodejs yarn \
    mariadb-dev sqlite sqlite-dev sqlite-libs && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Upgrade to newer nodejs
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    apk upgrade nodejs

WORKDIR /app
