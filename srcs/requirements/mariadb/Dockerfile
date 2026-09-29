FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    mariadb-server

COPY init.sh /usr/local/bin/init.sh

RUN chmod +x /usr/local/bin/init.sh

CMD ["/usr/local/bin/init.sh"]
