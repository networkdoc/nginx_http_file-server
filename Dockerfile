FROM nginx

ADD default.conf /etc/nginx/conf.d/

RUN rm /usr/share/nginx/html/index.html

VOLUME ["/usr/share/nginx/html"]

EXPOSE 80
