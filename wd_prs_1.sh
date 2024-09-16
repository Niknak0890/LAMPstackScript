#!/bin/bash

#To install WordPress, we need to download the compressed file and extract it:
yum install wget -y
cd /tmp
sudo wget https://wordpress.org/latest.tar.gz

#Now, let’s extract the file and copy it to /var/www/html
sudo tar -xzvf latest.tar.gz -C /var/www/html/
cd /var/www/html/

#You can remove the tar.gz file now:
rm -rf /tmp/latest.tar.gz

#Now, copy the content of wp-config-sample.php to the file wp-config.php
sudo cp /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php

