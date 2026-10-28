# NOTE: This file was generated via generate.sh. Don't edit it directly

FROM ghcr.io/sun-asterisk-research/php:8.1.34-nginx-alpine3.22@sha256:52414238eb01bf163d0df29bb7c10adb04559a89cdd9242c8794c35defe7e998

ENV COMPOSER_VERSION=2.4.1

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version="$COMPOSER_VERSION"

COPY rootfs /
RUN apk add --no-cache git

RUN apk add --update linux-headers --no-cache --virtual .ext-deps autoconf gcc musl-dev make \
    && pecl install xdebug pcov \
    && docker-php-ext-enable xdebug pcov \
    && apk del .ext-deps
