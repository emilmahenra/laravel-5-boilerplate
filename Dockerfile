FROM ubuntu:18.04
RUN /bin/sh -c apt update && apt install php php-mbstring php-gd php-xml php-pdo
COPY ./* /var/phpunit
CMD cd /var/phpunit && php artisan serve --port 8080
