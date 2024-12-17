FROM debian:slim

RUN apt update

EXPOSE 9000

VOLUME /data

CMD [ "/bin/bash","-c" ,"while true; do echo $(date) >> /data/file1.txt; sleep 2; done" ]