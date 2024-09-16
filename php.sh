#!/bin/bash

#Install php:
yum install php php-mysqlnd -y

#We need to test if PHP is successfully installed and running fine. To do that:

#Create a file called info.php in the directory /var/www/html
cd /var/www/html 

#Add the following lines to the info.php file in the insert mode:
# Define the filename
FILE="info.php"

# Text to be added
TEXT="<?php
phpinfo();
?>"

# Add text to the file
echo "$TEXT" > "$FILE"

#Let’s restart Apache:
systemctl restart httpd

#Let’s install some additional packages for Php: php-gd
yum install php-gd -y
