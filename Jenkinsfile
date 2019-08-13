pipeline {
    agent any

    environment {
        NAME = "mc_server"
        PORT = "25565"
        API = "https://launchermeta.mojang.com/mc/game/version_manifest.json"
        SERVER = "https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar"
    }
    stages {
        stage('Get') {
            steps {
                git 'https://github.com/Kaxxu/docker-mc-server.git'
                sh 'printenv'
                sh 'wget ${SERVER}'
            }
        }
        stage('Build') {
            steps {
                docker.build("${NAME}")
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -d -p $2:25565 ${NAME}'
            }
        }
    }
}
