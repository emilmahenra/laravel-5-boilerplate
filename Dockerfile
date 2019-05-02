FROM ubuntu:16.04
RUN apt-get update && apt-get install zlibc wget curl openssl zip unzip git libxml2-dev libpng-dev php php-mbstring php-gd php-xml php-pdo apache2 -y
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
WORKDIR /var/phpunit
COPY . /var/phpunit/
RUN composer install
CMD cd /var/phpunit && php artisan serve --port 8080
