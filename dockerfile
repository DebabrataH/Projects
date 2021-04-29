FROM centos:latest
MAINTAINER debabratah51@gmail.com
RUN yum install -y httpd\
zip\
unzip\
ADD https://github.com/edureka-devops/projCert/tree/master/website /var/www/html/
WORKDIR /var/www/html
RUN cp https://github.com/edureka-devops/projCert/tree/master/website/* .
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80