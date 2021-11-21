# FROM bishal231996/apcont
# ADD ./devopsIQ /var/www/html/devopsIQ
FROM httpd
COPY ./devopsIQ /usr/local/apache2/htdocs/
