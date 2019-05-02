FROM ubuntu:16.04
RUN apt update && apt install php php-mbstring php-gd php-xml php-pdo apache2 -y
COPY ./* /var/phpunit/
WORKDIR /var/phpunit
CMD cd /var/phpunit && php artisan serve --port 8080
