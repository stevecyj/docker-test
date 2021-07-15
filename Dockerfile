FROM alpine:latest
ENV myworkdir /var/www/localhost/htdocs
RUN apk --update add apache2
RUN rm -rf /var/cache/apk/*
RUN cd ${myworkdir} \
    && echo "<h3>I am running docker! 01</h3>" >> index.html
RUN cd ${myworkdir} \
    && echo "<h3>I am running docker! 02</h3>" >> index.html
RUN cd ${myworkdir} \
    && echo "<h3>I am running docker! 03</h3>" >> index.html
ENTRYPOINT [ "httpd", "-D", "FOREGROUND" ]