#!/bin/sh
PORT=${PORT:-8080}
echo "Starting nginx on port $PORT"
sed -i "s/listen  *80;/listen $PORT;/g" /etc/nginx/conf.d/default.conf
nginx -g 'daemon off;'
