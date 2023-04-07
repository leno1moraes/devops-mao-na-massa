#!/usr/bin/env bash
echo "Instalação do Apache e configurando..."
yum install -y httpd >/dev/null 2>&1
cp -r /vagrant/html/* /var/www/html
service httpd start

