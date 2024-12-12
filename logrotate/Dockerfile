FROM nginx:latest

RUN apt-get update && \
    apt-get install -y awscli logrotate && \
    apt-get clean

COPY upload_to_r2.sh /usr/local/bin/upload_to_r2.sh
RUN chmod +x /usr/local/bin/upload_to_r2.sh

COPY logrotate.conf /etc/logrotate.d/nginx 
RUN chmod 0644 /etc/logrotate.d/nginx

# Copy the .env.aws file
COPY .env.aws /etc/environment

# Ensure the environment variables are loaded
RUN echo "source /etc/environment" >> /etc/profile

CMD ["tail", "-f", "/dev/null"]