FROM php:7.4-apache
MAINTAINER Javier Pérez "javierperezhidalgo01@gmail.com"

EXPOSE 80

ADD bookmedik /var/www/html/
ADD script.sh /usr/local/bin/

RUN docker-php-ext-install mysqli \
&& chmod +x /usr/local/bin/script.sh

ENV DATABASE_USER bookmedik
ENV DATABASE_PASSWORD bookmedik
ENV DATABASE_HOST db

ENTRYPOINT ["script.sh"]
