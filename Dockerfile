FROM serversideup/php:8.3-fpm-nginx

USER root

RUN install-php-extensions sqlsrv pdo_sqlsrv

USER www-data
