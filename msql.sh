#!/bin/bash

#To install MySQL:
sudo dnf install mariadb105 -y #for amazon linux 2
sudo yum install mariadb -y

#Start the mysql service with:
sudo systemctl start mariadb

#Now enable it with:
sudo systemctl enable mariadb

#Now secure the installation by setting the root password:
sudo mysql_secure_installation

