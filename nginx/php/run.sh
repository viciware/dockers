#!/bin/bash
set -e

echo $NGINX_REWRITE
if [ -n $NGINX_REWRITE ]
then
  sed -i "/try_files /c try_files \$uri \$uri/ $NGINX_REWRITE;" /etc/nginx/nginx.conf; > /dev/null
fi

exec "$@"
