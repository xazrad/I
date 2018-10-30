FROM nginx:1.15.5-alpine

RUN mkdir /static
RUN rm /etc/nginx/conf.d/default.conf
COPY default.conf /etc/nginx/conf.d/default.conf

VOLUME /static/

CMD ["nginx", "-g", "daemon off;"]