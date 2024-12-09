FROM nginx:latest

RUN apt-get update && \
    apt-get install -y logrotate && \
    apt-get clean

COPY logrotate.conf /etc/logrotate.d/nginx 

RUN chmod 0644 /etc/logrotate.d/nginx

CMD ["tail", "-f", "/dev/null"]