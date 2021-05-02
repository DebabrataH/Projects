FROM centos

MAINTAINER debabratah51@gmail.com

# Install Apache Server
RUN yum install httpd -y

# Start Apache Server
CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]

# For port mapping
EXPOSE 80
