#!/bin/bash

apt-get update

apt-get install -y nginx

systemctl enable nginx

systemctl start nginx

echo "<h1>Terraform + GCP + Nginx</h1>" > /var/www/html/index.html