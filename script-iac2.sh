#!/bin/bash

echo "Atualizando Servidor..."
apt-get update
apt-get upgrade -y
echo "Servidor Atualizado!"

echo "Instalando Apache e Unzip..."
apt-get install apache2 -y
apt-get install unzip -y
echo "Dependencias instaladas!"

echo "Copiando arquivos de site do repositorio linux-site-dio do github de denilsonbonatti e os adicionando à pasta /var/www/html/..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "Arquivos adicionados a pasta /var/www/html/!"
