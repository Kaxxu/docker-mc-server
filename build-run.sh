#!/bin/bash

NAME=${2:-mc_server}
PORT=${3:-25565}

API=https://launchermeta.mojang.com/mc/game/version_manifest.json
VER_API=$(curl ${API} | jq .versions[0].url | sed 's/"//g')
SERVER=$(curl ${VER_API} | jq .downloads.server.url | sed 's/"//g')

function get() {
  echo -e "\e[32mGet server.jar\e[0m"
  wget ${SERVER}
  echo ""
}

function build() {
  echo -e "\e[32mDocker Build\e[0m"
  docker build -t ${NAME} .
  echo ""
}

function run() {
  echo -e "\e[32mDocker Run\e[0m"
  docker run -d -p 127.0.0.1:${PORT}:25565/udp ${NAME}
  echo ""
}

function all() {
  get
  build
  run
}

"$@"
