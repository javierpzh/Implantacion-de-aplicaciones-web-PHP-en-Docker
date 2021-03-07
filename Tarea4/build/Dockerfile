FROM php:7.4-apache
MAINTAINER Javier Pérez "javierperezhidalgo01@gmail.com"

EXPOSE 80

WORKDIR /var/www/html/

ADD script.sh /usr/local/bin/

RUN apt-get update \
&& apt-get -y install \
unzip wget \
zlib1g-dev libzip-dev libicu-dev libpng-dev \
&& wget https://download.prestashop.com/download/releases/prestashop_1.7.7.2.zip -P /opt/ \
&& docker-php-ext-install zip gd pdo_mysql intl \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* \
&& a2enmod rewrite \
&& chmod +x /usr/local/bin/script.sh

ENTRYPOINT ["script.sh"]
