FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
COPY apache2.html /var/lib/www/html/apache2.html
ENTRYPOINT ["/use/sbin/apachectl","-D","FOREGROUND"]
