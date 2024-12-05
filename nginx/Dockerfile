FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
# Install necessary packages
RUN apt-get update && apt-get install -y tzdata

# Set timezone to JST
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
