a Docker php implementation.

Please link a php-fpm container on 'php'.

Also, if you need a url friendly rewrite, (wordpress), set the $URI_TO_SCRIPT variable. It will be appended to:  try_files $uri $uri {right here};

Example:  URI_TO_SCRIPT='index.php?$args' for wordpress.
