FROM centos:latest
MAINTAINER rupsda@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page259/health.zip  /var/www/html
WORKDIR /var/www/html
RUN unzip health.zip
RUN cp -rvf health/* .
RUN rm -rf health health.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
