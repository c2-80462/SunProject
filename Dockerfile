# Use the official PHP and Apache image
FROM php:apache

# Install MySQLi extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy your PHP files to the container
COPY index.html /var/www/html/index.html
COPY submit.php /var/www/html/submit.php
COPY success.php /var/www/html/success.php

# Expose port 80
EXPOSE 
