FROM debian:buster
RUN apt update && apt install -y \
                php7.3 \
                php7.3-fpm \
                php7.3-mysql \
                wget
COPY ./tools/ /usr/local/bin/
RUN mkdir -p /etc/php/7.3/fpm
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
EXPOSE 9000
RUN chmod +x /usr/local/bin/install.sh
CMD bash /usr/local/bin/install.sh