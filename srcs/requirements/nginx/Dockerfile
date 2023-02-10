FROM debian:buster
RUN apt update && \
    apt install -y nginx && \
    apt install openssl && \
    mkdir /etc/sslcert && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/sslcert/selfsigned.key \
    -out /etc/sslcert/selfsigned.crt -subj '/CN=jhizdahr.42.fr'
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]