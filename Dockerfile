FROM centos:latest
MAINTAINER it18.xds@gmail.com
RUN yum install -y httpd \
  zip \
  unzip \
  vim
ADD https://www.free-css.com/assets/files/free-css-templates/download/page270/unika.zip /var/www/html
WORKDIR /var/www/html
RUN unzip unika.zip
RUN cp -rvf unika-html/* .
RUN rm -rf unika-html unika.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
