FROM centos:latest
MAINTAINER shaiksaif2468@gmail.com
RUN yum install -y httpd \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/fitcento.zip /var/www/html
WORKDIR  /var/www/html
RUN unzip fitcento.zip
RUN cp -rvf fitcento/* .
RUN rm -rf fitcento fitcento.zip
CMD ["/user/sbin/httpd","-D","FOREGROUND"]
ENTRYPOINT ["bash","entrypoint.prod.sh"]
EXPOSE 80
