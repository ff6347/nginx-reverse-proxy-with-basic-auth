FROM nginx:1.19.2-alpine as gateway
LABEL Name=docker-create-file Version=0.0.1
ARG USER
ARG PW
ENV USER $USER
ENV PW $PW
WORKDIR /usr
COPY launch.sh  ./
RUN apk update && apk upgrade && \
  apk add apache2-utils && \
  rm -rf /var/cache/apk/* /tmp/*

RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak
COPY default.conf /etc/nginx/conf.d/default.conf

CMD ["sh", "launch.sh"]