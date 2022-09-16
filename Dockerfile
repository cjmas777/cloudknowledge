FROM centos:latest
MAINTAINER cjmas777@gmail.com
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install -y httpd  \ 
zip \ 
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page282/pro.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip pro.zip
RUN cp -rvf pro-html/* .
RUN rm -rf hospital-website-template medinova.zip pro-html pro.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
expose 80


# hope this work now / yml fild updated to delete old container & image before creating a new container //////

