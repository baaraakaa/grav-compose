FROM php:fpm
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/
RUN install-php-extensions curl ctype dom gd json mbstring openssl session simplexml xml zip apcu opcache yaml xdebug

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh","php-fpm"]