pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def app = docker.build("carmenpadi/retro-frontend:latest")
                }
            }
        }
        
    stage('Clean Up') {
            steps {
                sh 'docker rm -f retro-frontend || true'
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.image("carmenpadi/retro-frontend:latest").run('-p 8888:80')
                }
            }
        }
    }
}
