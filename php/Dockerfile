FROM php:7.0-apache

# Enable TRACE
RUN sed -i "s/TraceEnable Off/TraceEnable On/g" /etc/apache2/conf-available/security.conf

# Restart the apache2 service
RUN service apache2 restart

# install pd0_mysql
RUN docker-php-ext-install pdo_mysql
