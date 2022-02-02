FROM php:8.0.5-fpm

RUN apt-get update

RUN apt update \
    && apt install -y zlib1g-dev g++ git libicu-dev zip libzip-dev unzip \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && pecl install apcu \
    && docker-php-ext-enable apcu \
    && docker-php-ext-configure zip \
    && docker-php-ext-install zip

# NPM + YARN install
RUN apt-get install -y npm
RUN npm install --global yarn

# Install Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php  --quiet --install-dir="/usr/local/bin" --filename="composer" --2
RUN php -r "unlink('composer-setup.php');"

# xDebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

COPY php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/KiaLaPlusGrosse
##</romaricp>##

EXPOSE 9000
CMD ["php-fpm"]
