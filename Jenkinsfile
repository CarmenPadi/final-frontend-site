pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("carmenpadi/retro-frontend:latest")
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("carmenpadi/retro-frontend:latest").run('-p 8080:80')
                }
            }
        }
    }
}
