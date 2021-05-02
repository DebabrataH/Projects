FROM centos:latest

MAINTAINER debabratah51@gmail.com

# Install Apache Server
RUN yum install -y httpd \
RUN yum install -y zip \
RUN yum install -y unzip \

# Install PHP
RUN yum install -y php \

ADD https://www.free-css.com/assets/files/free-css-templates/download/page260/elegance.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip elegance.zip  
RUN cp -rvf templatemo_528_elegance/* .
RUN rm -rf elegance.zip

# Start Apache Server
CMD ["usr/sbin/init", "-D", "FOREGROUND"]

# For port mapping
EXPOSE 80
