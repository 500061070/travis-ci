FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install nginx
COPY index.html /var/www/html/index.html
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD ["/usr/sbin/nginx"]
