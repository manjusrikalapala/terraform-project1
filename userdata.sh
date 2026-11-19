#!/bin/bash

yum update -y
yum install httpd -y

systemctl start httpd
systemctl enable httpd

echo "<h1>Terraform EC2 Web Server Successfully Deployed</h1>" > /var/www/html/index.html
