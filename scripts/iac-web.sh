#!/bin/bash

## Script para praticar comandos de gerenciamento de servidor Web (Apache)
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Fazendo o download da aplicação de teste (Recriando Tela Login Instagram..."

cd /tmp
wget https://github.com/aloisiopf/dio-desafio-unimed-web-2022/archive/refs/heads/main.zip
unzip main.zip
cd dio-desafio-unimed-web-2022-main
cp -R * /var/www/html/

echo "Arquivos copiados com sucesso. Acesse o seu site para teste"
