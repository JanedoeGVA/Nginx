#!/bin/bash

chmod a+w /etc/nginx/conf.d/nginx.conf

sed -i "s|\${server_name}|$SERVER_NAME|" /etc/nginx/conf.d/nginx.conf

sed -i "s|\${datavatar_api_url}|$DATAVATAR_API_URL|" /etc/nginx/conf.d/nginx.conf

nginx -g 'daemon off;'
