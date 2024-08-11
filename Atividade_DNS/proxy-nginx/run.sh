#!/bin/bash

echo "Criando imagens..."

docker build -t web01 ./web01
docker build -t web02 ./web02
docker build -t proxy ./proxy

echo "Criando a rede..."

docker network create -d bridge gleyka_asa_br  

echo "Criando containers..."

docker run -d --net=gleyka_asa_br --name web01 
docker run -d --net=gleyka_asa_br --name web02  
docker run -d --net=gleyka_asa_br --name proxy  


