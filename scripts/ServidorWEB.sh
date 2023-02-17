#!/bin/bash

echo ""
echo "### Iniciando configuração ###"
echo ""

echo "Upgrade do sistema"
apt-get update > /dev/null
apt-get upgrade -y > /dev/null

echo ""
echo "Instalação do servidor WEB"
apt-get install apache2 -y > /dev/null
apt-get install unzip -y > /dev/null
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip > /dev/null
cd linux-site-dio-main
cp -r * /var/www/html/
rm -rf *.*

echo ""
echo "### Fim da configuração ###"