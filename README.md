docker-centos-nginx
========================

Docker image with Nginx and PHP-FPM

Developed by [Qobo](https://www.qobo.biz), used in [Qobrix](https://qobrix.com).

### Documentation

Use relevant branch for relevant PHP version

Map local volume to /var/www/html and export port 80 from container to access 
the served site:

```
docker run --rm -i -v src/webroot:/var/www/html -p 8090:80 qoboltd/docker-centos-nginx:latest
```

### License

[MIT](https://github.com/QoboLtd/docker-centos-base/blob/master/LICENSE)

### Links

* Docker HUB: https://hub.docker.com/r/qoboltd/docker-centos-nginx/
* Github: https://github.com/QoboLtd/docker-centos-nginx
