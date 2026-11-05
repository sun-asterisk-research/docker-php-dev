# NOTE: This file was generated via generate.sh. Don't edit it directly

FROM ghcr.io/sun-asterisk-research/php:7.4.33-nginx-alpine3.16@sha256:ccd57c94a1ec0734f926ce55550c528cfabaa4f467a629e77974e61673d32061

ENV COMPOSER_VERSION=2.4.1

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version="$COMPOSER_VERSION"

COPY rootfs /
RUN apk add --no-cache git

RUN apk add --update linux-headers --no-cache --virtual .ext-deps autoconf gcc musl-dev make \
    && pecl install xdebug-3.1.6 pcov-1.0.12 \
    && docker-php-ext-enable xdebug pcov \
    && apk del .ext-deps
