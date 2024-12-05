FROM alpine:latest

RUN apk add --no-cache logrotate

COPY logrotate.conf /etc/logrotate.d/nginx 

CMD ["logrotate", "-f", "/etc/logrotate.d/nginx"]