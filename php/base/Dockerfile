FROM php:fpm
MAINTAINER Nik Petersen (Viciware LLC)

RUN apt-get update && apt-get install -y libmcrypt-dev libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd \
  && docker-php-ext-install mysqli \
  && docker-php-ext-install mbstring \
  && docker-php-ext-install mcrypt 

COPY php.ini /usr/local/etc/php/conf.d/

RUN cd /tmp && \
    php -r "readfile('https://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer
