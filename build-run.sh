#!/bin/bash

NAME=${1:-mc_server}
PORT=${2:-25565}

#TBD - download newest server.jar
echo -e "\e[32mGet server.jar\e[0m"
wget https://launcher.mojang.com/v1/objects/808be3869e2ca6b62378f9f4b33c946621620019/server.jar
echo ""

echo -e "\e[32mDocker Build\e[0m"
docker build . -t $NAME
echo ""

echo -e "\e[32mDocker Run\e[0m"
docker run -d -p $2:25565 $NAME
echo ""

