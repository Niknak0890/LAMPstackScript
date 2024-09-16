#!/bin/bash

#Install http
yum install httpd -y

#Now enable the Httpd daemon with: 
systemctl enable httpd

#Start the Httpd daemon with:
systemctl start httpd

#Check the status of the Httpd daemon:
systemctl status httpd
