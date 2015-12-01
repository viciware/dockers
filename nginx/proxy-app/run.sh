#!/bin/bash
set -e

if [ -n $URI_TO_SCRIPT ]
then
  sed -i "/try_files /c try_files \$uri \$uri/ $URI_TO_SCRIPT;" /etc/nginx/nginx.conf; > /dev/null
fi

if [ -n $APP_URL ]
then
  sed -i "/proxy_pass /c proxy_pass $URI_TO_SCRIPT;0" /etc/nginx/nginx.conf; > /dev/null
fi

exec "$@"
