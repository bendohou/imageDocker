FROM debian:stable-slim

RUN apt update -y && \
    apt install apache2 -y && \
    apt clean

EXPOSE 9000

COPY index.html /var/www/html 

CMD [ "/bin/bash","-c" ,"while true; do echo $(date) >> /data/file1.txt; sleep 2; done" ]
