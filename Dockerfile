FROM php:5.6-apache

# phalcon
RUN apt-get update && \ 
    apt-get install -y php5-dev libpcre3-dev gcc make php5-mysql git-all && \
    git clone git://github.com/phalcon/cphalcon.git && \
    cd cphalcon/build && ./install && \
    echo 'extension=phalcon.so' > /usr/local/etc/php/conf.d/phalcon.ini
