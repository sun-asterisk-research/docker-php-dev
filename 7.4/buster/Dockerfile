# Generated via generate.sh. Please don't edit directly

FROM sunasteriskrnd/php:7.4-fpm-buster

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN apt-get update \
    && apt-get install -y git vim \
    && rm -rf /var/lib/apt/lists/*

RUN pecl install xdebug pcov \
    && docker-php-ext-enable xdebug pcov

COPY docker-php-ext-disable /usr/local/bin
