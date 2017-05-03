# GHE-Tester
**GHE-Tester** is a [docker](http://docker.com) enviroment for make hacking tests to most popular CMS.
![ghe-tester.sh](/img/ghe-tester-vid.gif)

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
If you are UCI users, then run this command
```bash
docker-compose -f docker-compose-UCI.yml up
```
4. Wait for the system up and open the browser in [localhost](http://localhost) and execute your tests.

5. The system creates three databases (joomla, drupal, wordpres)

## Backup or restore
Using **ghe-tester.sh** you can make a backup of your environment and also restore your environment from previous backup.
```bash
sudo ./ghe-tester.sh
```
![ghe-tester.sh](/img/ghe-tester.gif)

## Developed by
@Nesty92 and @adrian011494