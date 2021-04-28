FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install nginx
COPY index.html /var/www/html/index.html
COPY default /etc/nginx/dites-enabled/default
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 3001
CMD ["/usr/sbin/nginx"]
