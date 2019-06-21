#!/bin/bash

NAME=${1:-mc_server}
PORT=${2:-25565}
API=https://launchermeta.mojang.com/mc/game/version_manifest.json

VER_API=$(curl $API | jq .versions[0].url | sed 's/"//g')
SERVER=$(curl $VER_API | jq .downloads.server.url | sed 's/"//g')

echo -e "\e[32mGet server.jar\e[0m"
wget $SERVER
echo ""

echo -e "\e[32mDocker Build\e[0m"
docker build . -t $NAME
echo ""

echo -e "\e[32mDocker Run\e[0m"
docker run -d -p $2:25565 $NAME
echo ""

