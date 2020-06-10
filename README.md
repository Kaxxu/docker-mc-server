# Docker Minecraft Server
Dockerfile to create a Minecraft Server in a container

Require:
```
- Docker
- Minecraft Server jar file
- jq
```
Server jar can be download from:
https://www.minecraft.net/en-us/download/server/

# Running the Dockerfile
Command to build to docker container:
```
docker build . -t <CONTAINER_NAME>
```
Command to run the Container: 
```
docker run -d -p <HOST_PORT>:25565 <CONTAINER_NAME>
```

# build-run.sh
Script to download, build and run Dockerfile with Minecraft Server:
```
./build-run.sh
```

In case the script is not working use the below command:
```
chmod +x build-run.sh
```

### Default values
Default container name = `mc_server`

Default container host port = `25565`

To change the default values run the script with additional parameters:
```
./build-run.sh <OWN_CONTAINER_NAME> <OWN_HOST_PORT>
```

# server.properties
File with default properties of the Minecraft Server change at will :)
