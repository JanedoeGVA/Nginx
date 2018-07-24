FROM nginx

COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY script.sh /etc/nginx/conf.d/script.sh
COPY test.sh /etc/nginx/conf.d/test.sh

RUN chmod +x /etc/nginx/conf.d/script.sh
RUN chmod +x /etc/nginx/conf.d/test.sh

CMD ["./etc/nginx/conf.d/script.sh"]
CMD ["./etc/nginx/conf.d/test.sh"]
