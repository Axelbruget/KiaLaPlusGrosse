FROM php:8.0.5-fpm

RUN apt-get update

RUN apt update \
    && apt install -y zlib1g-dev g++ git libicu-dev zip libzip-dev zip \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip \

# NPM + YARN install
RUN apt-get install -y npm
RUN npm install --global yarn

WORKDIR /var/www/KiaLaPlusGrosse
##</romaricp>##

EXPOSE 9000
CMD ["php-fpm"]
