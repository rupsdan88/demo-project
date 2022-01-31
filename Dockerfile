FROM centos:latest
MAINTAINER rupam.dandage@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/initio.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip initio.zip
RUN cp -rvf initio/* .
RUN rm -rf initio initio.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
