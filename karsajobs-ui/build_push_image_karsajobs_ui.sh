#!/bin/sh

# membuat image dari Dockerfile
docker build -t karsajobs-ui:latest .

# menampilkan daftar image yang ada di local
docker images

# membuat tag image dengan nama yang berbeda
docker tag karsajobs-ui:latest nmazzahra/karsajobs-ui:latest

# login ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u nmazzahra --password-stdin

# push image ke docker hub
docker push nmazzahra/karsajobs-ui:latest