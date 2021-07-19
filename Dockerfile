FROM alpine:latest
ENV myworkdir /var/www/localhost/htdocs
ARG whoami=Terry
WORKDIR ${myworkdir}
RUN apk --update add apache2
RUN rm -rf /var/cache/apk/*
RUN echo "<h3>I am ${whoami}. I amrunning docker! 01</h3>" >> index.html
RUN echo "<h3>I am ${whoami}. I amrunning docker! 02</h3>" >> index.html
RUN echo "<h3>I am ${whoami}. I amrunning docker! 03</h3>" >> index.html
# COPY ./content.txt ./
# RUN ls -l ./
# RUN cat ./content.txt >> index.html
ENTRYPOINT [ "httpd", "-D", "FOREGROUND" ]