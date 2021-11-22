#FROM bishal231996/apserver
#ADD ./devopsIQ /var/www/html/devopsIQ
# FROM httpd
# COPY ./devopsIQ /usr/local/apache2/htdocs/
FROM bishal231996/apserver
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
#RUN apt-get -y install apache2
ADD ./devopsIQ /var/www/html/devopsIQ
ENTRYPOINT apachectl -D FOREGROUND
ENV name Intellipaat
