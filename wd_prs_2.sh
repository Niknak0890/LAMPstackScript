#!/bin/bash

#CONFIG APACHE FOR WORDPRESS

#After saving and exiting vi, we need to change the ownership on /var/www/html 
chown -R apache:apache /var/www/html/*  
#The new owner of that directory is apache and the group owner is apache and -R means recursive (set the same ownership on all the subdirectories and files under a folder)

#Configure Apache for WordPress
#Create an Apache configuration file for your WordPress site:

# Define the filename
FILE="/etc/httpd/conf.d/wordpress.conf"

# Text to be added
TEXT="<VirtualHost *:80>
    ServerAdmin oracle@localhost
    DocumentRoot /var/www/html/wordpress
    ServerName localhost
    ServerAlias www.localhost.com
    ErrorLog /var/log/httpd/wordpress_error.log
    CustomLog /var/log/httpd/wordpress_access.log combined
</VirtualHost>"

# Add text to the file
echo "$TEXT" > "$FILE"#Add the following content, and save the file:

#Restart the httpd service 
systemctl restart httpd
