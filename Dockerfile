FROM centos:latest
#RUN cd /etc/yum.repos.d/
#RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
#RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
MAINTAINER cjmas777@gmail.com
RUN yum install -y httpd  \ 
zip \ 
unzip
#ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip  /var/www/html/
#WORKDIR /var/www/html
#RUN unzip kindle.zip
#RUN cp -rvf markups-kindle/* .
#RUN rm -rf _MACOSX markups-kindle kindle.zip
#CMD ["/user/sbin/httpd", "-D", "FOREGROUND"]
#expose 80
