FROM debian:stable-slim

RUN apt update -y && \
    apt install apache2 -y && \
    apt clean

EXPOSE 9000

COPY index.html /var/www/html 

COPY welcome.conf /etc/apache2/sites-enabled/

VOLUME  /var/www/html

CMD [ "apachectl","-D", "FOREGROUND" ]
