# FROM php:8.2-apache
# RUN mkdir -p /var/www/html
# COPY . /var/www/html/
# WORKDIR /var/www/html
# RUN docker-php-ext-install -j$(nproc) pdo pdo_mysql
# RUN apt-get -y upgrade
# RUN apt-get -y update
# RUN apt-get -y install vim
# COPY servername.conf /etc/apache2/conf-available/servername.conf
# RUN a2enmod rewrite
# RUN a2enconf servername
# EXPOSE 80

# Use the official PHP image from the Docker Hub
FROM php:7.4-apache

# Enable mod_rewrite for Apache
RUN a2enmod rewrite

# Install the MySQLi extension for PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the PHP application files to the Apache web directory
COPY . /var/www/html/

RUN apt-get -y upgrade
RUN apt-get -y update
RUN apt-get -y install vim

EXPOSE 80