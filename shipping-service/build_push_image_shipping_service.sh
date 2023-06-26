#!/bin/sh

# membuat image dari Dockerfile
docker build -t shipping-service:latest .

# menampilkan daftar image yang ada di local
docker images

# membuat tag image dengan nama yang berbeda
docker tag shipping-service:latest nmazzahra/shipping-service:latest

# login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u nmazzahra --password-stdin

# push image ke docker hub
docker push nmazzahra/shipping-service:latest