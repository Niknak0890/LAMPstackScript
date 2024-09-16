#!/bin/bash

#To install MySQL on Centos 9, use this command:
sudo yum install mariadb-server -y

#Start the mysql service with:
sudo systemctl start mariadb

#Now enable it with:
sudo systemctl enable mariadb
