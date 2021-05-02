FROM centos:latest

MAINTAINER Debabrata Hazra <debabratah51@gmail.com>

# Install Apache Server
RUN yum install -y httpd\
    zip \
    unzip

# Install PHP
RUN yum install php -y

ADD https://www.free-css.com/assets/files/free-css-templates/download/page262/softy-pinko.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip softy-pinko.zip
RUN cp -rvf templatemo_535_softy_pinko /* .
RUN rm -rf softy-pinko softy-pinko.zip

# Start Apache Server
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]

# For port mapping
EXPOSE 80
