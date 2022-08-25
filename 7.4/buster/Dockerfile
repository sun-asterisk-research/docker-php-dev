# NOTE: This file was generated via generate.sh. Don't edit it directly

FROM sunasteriskrnd/php:7.4.30-nginx-buster

ENV COMPOSER_VERSION=2.4.1

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version="$COMPOSER_VERSION"

COPY docker-php-ext-disable /usr/local/bin
RUN apt-get update \
    && apt-get install -y git vim \
    && rm -rf /var/lib/apt/lists/*

RUN pecl install xdebug pcov \
    && docker-php-ext-enable xdebug pcov
