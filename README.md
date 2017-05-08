# GHE-Tester
**GHE-Tester** is a [docker](http://docker.com) enviroment for make tests to web aplications.
![ghe-tester.sh](/img/ghe-tester-vid.gif)

## Web aplications supported
* Based on PHP
* Based on JavaScript

## Database supported
* Mysql
* Postgresql

## Installation
1. First you need install and configure [docker](http://docker.com) and [docker-compose](https://docs.docker.com/compose/) and download [latest release](https://github.com/Nesty92/GHE-Tester/releases/latest).
2. Copy to folder "www/sites/" the web aplications that you use in your tests.
3. Run in the terminal:
    ```bash
    docker-compose up
    ```
    or
    ```bash
    docker-compose -f docker-compose-UCI.yaml up
    ```
4. Wait for the system up and open the browser in [localhost](http://localhost) and execute your tests.

5. For configure your aplications database you can use one of this servers:
    * mysql-db (For Mysql databases)
    * postgres-db (For Postgresql databases)
    
    The default user is "root" and the password is "ghe". 

## Database admin
* For Mysql you can use [phpmyadmin](http://localhost:8080) in your localhost in the port 8080. 
* For Postgresql you can use [phppgadmin](http://localhost:8090/phppgadmin/) in your localhost in the port 8090. 

## Backup or restore
Using **ghe-tester.sh** you can make a backup of your environment and also restore your environment from previous backup.
```bash
sudo ./ghe-tester.sh
```
![ghe-tester.sh](/img/ghe-tester.gif)

## Developed by
@Nesty92 and @adrian011494
