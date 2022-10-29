FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
COPY . .
ENTRYPOINT ["/use/sbin/apachectl","-D","FOREGROUND"]
