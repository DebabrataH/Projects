FROM centos

MAINTAINER debabratah51@gmail.com

# Install Apache Server
RUN yum install httpd -y

ADD https://github.com/edureka-devops/projCert.git /var/www/html/
WORKDIR /var/www/html
RUN cp -rvf index.php/* .
# Start Apache Server
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]

# For port mapping
EXPOSE 80
