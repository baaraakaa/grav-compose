#!/bin/bash

chown -R www-data /code
chgrp -R www-data /code


# docker-php-entrypoint
set -e

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
	set -- php "$@"
fi

exec "$@"