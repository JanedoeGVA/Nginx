FROM nginx

RUN apt-get update
RUN apt-get -y install openssl

COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY script.sh /etc/nginx/conf.d/script.sh

RUN chmod +x /etc/nginx/conf.d/script.sh

CMD ["./etc/nginx/conf.d/script.sh"]

