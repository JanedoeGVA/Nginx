#!/bin/bash

if [ ! -f $DH_PARAM_OUT ]; then
    echo "File not found!"
#sudo openssl dhparam -out $DH_PARAM_OUT 2048
else
    echo "File found!"
fi

if [ ! -f /run/secrets/dhparam-test.pem ]; then
    echo -e "not present !!"
    openssl dhparam -out /run/secrets/dhparam-test.pem 2048
fi

chmod a+w /etc/nginx/conf.d/nginx.conf

sed -i "s|\${server_name}|$SERVER_NAME|" /etc/nginx/conf.d/nginx.conf
sed -i "s|\${datavatar_api_url}|$DATAVATAR_API_URL|" /etc/nginx/conf.d/nginx.conf

nginx -g 'daemon off;'
