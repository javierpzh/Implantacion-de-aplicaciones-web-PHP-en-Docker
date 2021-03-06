FROM nginx
MAINTAINER Javier Pérez "javierperezhidalgo01@gmail.com"

EXPOSE 80

#ADD bookmedik /opt/bookmedik
ADD default.conf /etc/nginx/conf.d/default.conf
ADD script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh

ENV DATABASE_USER bookmedik
ENV DATABASE_PASSWORD bookmedik
ENV DATABASE_HOST db

ENTRYPOINT ["script.sh"]
