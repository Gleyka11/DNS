#!/bin/bash

echo criando uma imagem docker 

docker build -t bind9 .

echo iniciando o conteiner.. mapeando as portas do conteiner para o host

docker run -d -p 53:53/udp --name bind9 bind9