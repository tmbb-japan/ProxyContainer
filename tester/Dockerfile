FROM node:18

ENV NODE_TLS_REJECT_UNAUTHORIZED=0

RUN npm install -g artillery

WORKDIR /app

COPY test-script.yml /app/test-script.yml
COPY generate-report.sh /app/generate-report.sh

RUN chmod +x /app/generate-report.sh

CMD ["/app/generate-report.sh"]