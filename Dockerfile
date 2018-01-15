FROM alpine:latest
ADD default.conf /etc/nginx/conf.d/default.conf
RUN apk add --update git nginx curl nano
WORKDIR /data
RUN git clone https://github.com/studyminbulat/portfolio.git .
WORKDIR /run/nginx
EXPOSE 4848
CMD nginx -g 'daemon off;'
