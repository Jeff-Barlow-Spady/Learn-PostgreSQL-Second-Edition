FROM postgres:latest

RUN apt-get update \
 && apt-get install -y net-tools vim sudo less emacs-nox procps pgxnclient postgresql-contrib postgresql-plperl-16 make sudo postgresql-server-dev-16 gcc

RUN mkdir -p /data/tablespaces      \
 && mkdir -p /src/tagext            \
 && mkdir -p /data/tablespaces/ts_a \
 && mkdir -p /data/tablespaces/ts_b \
 && mkdir -p /data/tablespaces/ts_c \
 && chown -R postgres:postgres /src \
 && chown -R postgres:postgres /data 


RUN echo '[ ! -z "$TERM" -a -r /etc/motd ] && cat /etc/motd' >> /etc/bash.bashrc
COPY motd /etc/motd

COPY ./sudoers.conf /etc/sudoers

COPY ./tagext /src/tagext
RUN chown -R postgres:postgres /src


