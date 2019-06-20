#Docker Minecraft Server
Dockerfile to create a docker container with a running Minecraft Server 

Require:
```
Docker
```

# build-run.sh
Script to download, build and run Dockerfile with Minecraft Server

In case the script is not working use the below command:
```
chmod +x build-run.sh
```

### Default values
Default container name = `mc_server`

Default container host port = `25565`

To change the default values run the script with additional parameters:
```
./build-run.sh <own_name> <own_port>
```

# server.properties
File with default properties of the Minecraft Server change at will :)
