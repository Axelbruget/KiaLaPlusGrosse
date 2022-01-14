FROM php:8.0.5-fpm

RUN apt-get update

# NPM + YARN install
RUN apt-get install -y npm
RUN npm install --global yarn

WORKDIR /var/www/KiaLaPlusGrosse
##</romaricp>##

EXPOSE 9000
CMD ["php-fpm"]
