# [TYPO3](http://typo3.org/typo3-cms/) CMS dockerized

Running on official Docker hub library image library/php:5.5-apache

Note: Work in progress. For now this provides only fresh installations.

# Supported tags

* [`6.2`](https://github.com/Sevyls/docker-typo3/tree/master/6.2/Dockerfile)
* [`7.1`](https://github.com/Sevyls/docker-typo3/tree/master/7.1/Dockerfile)
* [`latest`](https://github.com/Sevyls/docker-typo3/tree/master/Dockerfile)

# Build

1. Configure database credentials in `docker-compose.yml`
2. Run `docker-compose up`
3. Open `http://<YOUR_DOCKER_HOST_IP>:80/`
4. Configure the database with Hostname `db`, database `typo3` and your credentials

## TODO

1. Import existing TYPO3 database + typo3conf
2. Autoconfigure fresh install

Inspired by  [hbokh/docker-typo3-cms](https://registry.hub.docker.com/u/hbokh/docker-typo3-cms/)
