FROM postgres:latest

RUN apt-get update \
 && apt-get install -y net-tools vim sudo less emacs-nox procps pgbadger lighttpd nmap postgresql-15-pgaudit

RUN mkdir -p /data/tablespaces        \
 && chown -R postgres:postgres /data  \
 && mkdir -p /data/html               \
 && chown -R postgres:www-data /data/html 


RUN echo "Learn PostgreSQL 16" > /etc/motd

RUN echo '[ ! -z "$TERM" -a -r /etc/motd ] && cat /etc/motd' >> /etc/bash.bashrc
COPY motd /etc/motd

COPY memory.conf /postgres/16/data/memory.conf

