FROM centos:latest

MAINTAINER Debabrata Hazra <debabratah51@gmail.com>

# Install Apache Server
RUN yum install -y httpd\

# Install PHP
RUN yum install php -y

ADD https://github.com/DebabrataH/Projects/tree/master/website /var/www/html/
WORKDIR /var/www/html
RUN cp https://github.com/DebabrataH/Projects/tree/master/website/* .

# Start Apache Server
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]

# For port mapping
EXPOSE 80