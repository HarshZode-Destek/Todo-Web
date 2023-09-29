FROM alpine:latest

RUN apk --update --no-cache add apache2

COPY . /var/www/localhost/htdocs

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]