#!/bin/bash

# chown -R www-data /code
chgrp -R www-data /code
find /code -type f -exec chmod 664 {} \;
find /code -type f -exec chmod 775 {} \;
find /code -type d -exec chmod 775 {} \;
find /code -type d -exec chmod +s {} \;

# docker-php-entrypoint
set -e

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php "$@"
fi

exec "$@"