#!/bin/bash

eval $( fixuid )
/usr/sbin/php-fpm -D
/usr/sbin/nginx -g 'daemon off;'
