# NOTE: This file was generated via generate.sh. Don't edit it directly

FROM sunasteriskrnd/php:7.3.33-nginx-cli-buster

ENV COMPOSER_VERSION={{ composer_version }}

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version="$COMPOSER_VERSION"

COPY docker-php-ext-disable /usr/local/bin
