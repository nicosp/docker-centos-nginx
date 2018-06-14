FROM qoboltd/docker-centos-php:5.6

# Install PHP and Tools 
RUN yum -y install --setopt=tsflags=nodocs php-fpm \
    nginx \
    && yum clean all \
    && rm -rf /var/cache/yum

COPY www.conf /etc/php-fpm.d/
COPY nginx.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
COPY php.ini /etc/

RUN mkdir -p /run/php-fpm \
    && mkdir -p /var/www/html \
    && mkdir -p /var/cache/nginx \
    && chown nginx:nginx /var/lib/php -R \
    && chown nginx:nginx /var/www -R \
    && chown root:nginx /var/log/php-fpm -R \
    && chown nginx:root /var/cache/nginx -R

COPY run.sh /opt/

EXPOSE 80

CMD ["/opt/run.sh"]
