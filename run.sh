#!/bin/sh
# Preprend the upstream configuration

rm /etc/nginx/conf.d/*.conf && mv /usr/share/nginx/html/nginx.conf.default /etc/nginx/conf.d/nginx.conf && nginx -t

(echo "upstream theservice { server $SERVER_ADDR:$SERVER_PORT; }" && cat /etc/nginx/conf.d/nginx.conf) > proxy.conf.new
mv proxy.conf.new /etc/nginx/conf.d/nginx.conf

# Log the resulting configuration file
cat /etc/nginx/conf.d/nginx.conf

# Start nginx
nginx -g daemon off;