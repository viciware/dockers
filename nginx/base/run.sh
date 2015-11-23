#!/bin/bash
set -e

echo $URI_TO_SCRIPT
if [ -n $URI_TO_SCRIPT ]
then
  sed -i "/try_files /c try_files \$uri \$uri/ $URI_TO_SCRIPT;" /etc/nginx/nginx.conf; > /dev/null
fi

exec "$@"
