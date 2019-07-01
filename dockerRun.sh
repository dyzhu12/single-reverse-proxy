#!/bin/bash

set -e

sed -i "s/SOURCE_HOST/${SOURCE_HOSTNAME}/g" /etc/nginx/conf.d/reverse_proxy.conf
sed -i "s/DEST_HOST/${DEST_HOSTNAME}/g" /etc/nginx/conf.d/reverse_proxy.conf
sed -i "s/DEST_PORT/${DEST_PORT}/g" /etc/nginx/conf.d/reverse_proxy.conf

nginx -g "daemon off;"
