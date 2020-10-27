FROM centos:8
RUN yum update -y
RUN yum install telnet -y
RUN yum install -y httpd
RUN echo "Wecome to Centos" > /var/www/html/index.html
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
