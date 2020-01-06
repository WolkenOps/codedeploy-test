#!/usr/bin/env bash

name=apache
[[ $(docker ps -f "name=$name" --format '{{.Names}}') == $name ]] && docker stop $name || echo "container is not running"
