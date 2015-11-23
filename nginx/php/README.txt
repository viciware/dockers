a Docker php implementation.

Please link a php-fpm container on 'php'.

Also, if you need a url friendly rewrite, (wordpress), set the $NGINX_REWRITE variable. It will be appended to:  try_files $uri $uri {right here};

Example:  NGINX_REWRITE='index.php?$args' for wordpress.
