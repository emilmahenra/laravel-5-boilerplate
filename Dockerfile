FROM ubuntu:16.04
RUN apt-get update && apt-get install php php-mbstring php-gd php-xml php-pdo apache2 -y
WORKDIR /var/phpunit
COPY . /var/phpunit/
CMD cd /var/phpunit && php artisan serve --port 8080
