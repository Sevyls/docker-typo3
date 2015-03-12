FROM php:5.5-apache
# based on debian:jessie
# https://github.com/docker-library/php/blob/master/5.5/apache/Dockerfile

ENV TYPO3_VERSION 6.2.10

# Download TYPO3
RUN apt-get update -qq && apt-get install -y --no-install-recommends wget

RUN cd /var/www && \
    wget -qO - http://prdownloads.sourceforge.net/typo3/typo3_src-${TYPO3_VERSION}.tar.gz \
    | tar zxf - && \
    cd html && \
    ln -s ../typo3_src-${TYPO3_VERSION} typo3_src && \
    ln -s typo3_src/index.php index.php && \
    ln -s typo3_src/typo3 typo3 && \
    chown -R www-data:www-data /var/www

# PHP configuration for TYPO3
COPY config/php.ini /usr/local/etc/php/php.ini

RUN service apache2 start

EXPOSE 80
