#!/bin/bash

echo criando uma imagem..

docker build -t bind9 .

echo iniciando o container.. mapeando as portas do container para o host

docker run -d -p 53:53/udp --name bind9 bind9