FROM php:5.6.40-apache

ADD devsetup.ini /usr/local/etc/php/conf.d/
ADD devsetup.conf /etc/apache2/conf-available/

RUN a2enconf devsetup
RUN a2enmod rewrite
RUN docker-php-ext-install mysqli 
RUN service apache2 restart
