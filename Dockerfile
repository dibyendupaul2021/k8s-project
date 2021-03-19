FROM centos:latest
MAINTAINER dibyendu_11@rediffmail.com
RUN yum install -y httpd \
  zip \
  upzip
ADD https://freewebsitetemplates.com/download/space-science/space-science.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip space-science.zip
RUN cp -rvf space-science/* .
RUN rm -rf space-science space-science.zip
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
