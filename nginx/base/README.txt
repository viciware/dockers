a Docker nginx implementation.

Also, if you need a url friendly rewrite, set the $URI_TO_SCRIPT variable. It will be appended to:  try_files $uri $uri {right here};

Example:  URI_TO_SCRIPT='index.html' will forward all non-found urls to the page for a javascript app to handle.
