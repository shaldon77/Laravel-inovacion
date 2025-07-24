FROM php:8.2-cli

# Instala extensiones necesarias
RUN  docker-php-ext-install pdo_mysql
# Instala Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

CMD ["php", "-a"]
