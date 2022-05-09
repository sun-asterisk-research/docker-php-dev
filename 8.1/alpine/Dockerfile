# Generated via generate.sh. Please don't edit directly

FROM sunasteriskrnd/php:8.1-fpm-alpine

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apk add --no-cache git

RUN apk add --no-cache --virtual .ext-deps autoconf gcc musl-dev make \
    && pecl install xdebug pcov \
    && docker-php-ext-enable xdebug pcov \
    && apk del .ext-deps

COPY docker-php-ext-disable /usr/local/bin
