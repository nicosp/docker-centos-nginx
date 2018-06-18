docker-centos-nginx
========================

Docker image with Nginx and PHP-FPM

Developed by [Qobo](https://www.qobo.biz), used in [Qobrix](https://qobrix.com).

### Documentation

Use relevant branch for relevant PHP version

Map local volume to /var/www/html and export port 8000 from container to access 
the served site:

```
docker run --rm -i -v src/webroot:/var/www/html -p 8000:8000 qoboltd/docker-centos-nginx:latest
```

NOTE: nginx document_root is actually set to */var/www/html/webroot*

### License

[MIT](https://github.com/QoboLtd/docker-centos-base/blob/master/LICENSE)

### Links

* Docker HUB: https://hub.docker.com/r/qoboltd/docker-centos-nginx/
* Github: https://github.com/QoboLtd/docker-centos-nginx
