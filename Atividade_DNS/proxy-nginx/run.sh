#!/bin/bash

echo "Criando imagens..."

docker build -t web01 ./web01
docker build -t web02 ./web02
docker build -t proxy ./proxy

echo "Criando a rede..."

docker network create -d bridge gleyka_asa_br  

echo "criando containers..."

docker run -d --name web01 -p 8081:80 web01
docker run -d --name web02 -p 8082:80 web02
