# ECASDAS_BASE_DRUPAL
Drupal Core, General Contributed Modules and Themes

Spin up containers that will set web services using docker.

## Installation

Use the container manager [docker](https://www.docker.com/products/docker-desktop) to install Web services.

## Requirement
### Host 
MySQL server like MariaDB(https://mariadb.org/download/) or Oracl MySQL(https://dev.mysql.com/downloads/)
sed
Composer(https://getcomposer.org/download/)

## Usage

```docker
Unzip the download and
change directory to the unzipped location
If you want to install drupal site like "sitea" run the first script
If you want to access the container use the second script

```
```bash
sh env.sh && sh combine.sh -s sitea
```
To access the container
```bash
docker exec -it web bash
```
## Platform System
Windows: - Passed   
Mac: Passed     

## Update Drupal core and it's general modules/themes
run
```bash
composer update --working-dir=drupal/ && rm -rvf drupal/web drupal/vendor drupal/drush drupal/.*
```
it require HOST composer

## Contributing
This is proof of concert that PHP CMS services can run on Docker's Container cluster

Please make sure to update tests as appropriate.

## License
[Unknown](https://)
