FROM debian:buster
RUN apt update && apt install -y \
                php7.3 \
                php7.3-fpm \
                php7.3-mysql \
                mariadb-client \
                wget \
                sendmail
COPY ./tools/* ./
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
EXPOSE 9000
RUN chmod +x install.sh
CMD bash install.sh