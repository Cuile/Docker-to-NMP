FROM php:7.1-fpm

# set timezome
ENV TZ=Asia/Shanghai
# RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone

# install extension
RUN apt-get update

## zip
RUN apt-get install -y libzip-dev zip unzip --no-install-recommends \
    && docker-php-ext-install zip 

## GD
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev --no-install-recommends \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

## IMAP
RUN apt-get install -y libc-client-dev libkrb5-dev --no-install-recommends \
    && docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
    && docker-php-ext-install -j$(nproc) imap

## Intl
RUN apt-get install -y libicu-dev --no-install-recommends \
    && docker-php-ext-configure intl \
    && docker-php-ext-install -j$(nproc) intl

## General
RUN docker-php-ext-install opcache \
    && docker-php-ext-install mbstring

## Database
RUN apt-get install -y --no-install-recommends libpq-dev \
    && docker-php-ext-install pdo_mysql mysqli \
    && docker-php-ext-install -j$(nproc) pgsql pdo_pgsql

RUN rm -rf /var/lib/apt/lists/*
