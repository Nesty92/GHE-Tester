# GHE-Tester
**GHE-Tester** is a [docker](http://docker.com) enviroment for make hacking tests to most popular CMS.

## CMS supported
* Wordpress
* Drupal
* Joomla

## Installation
1. First you need install and configure [docker](http://docker.com) and [docker-compose](https://docs.docker.com/compose/).
2. Download and copy to folder "cms/[CMSNAME]" the CMS versions that you use in your tests. CMSNAME can be wordpress, drupal or joomla.
3. Run in the terminal:
```bash
docker-compose up
```
4. Open the browser in [localhost](http://localhost) and execute your tests.

## Backup or restore
Using **ghe-tester.sh** you can make a backup of your environment and also restore your environment from previous backup.
```bash
sudo ./ghe-tester.sh
```

## Developed by
@Nesty92 and @adrian011494