#!/usr/bin/env bash

name=apache
[[ $(docker ps  -a -f "name=$name" --format '{{.Names}}') == $name ]] ||
docker create --name $name -it -p 80:8080 bitnami/apache:latest
