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
                sh 'docker build -t carmenpadi/retro-frontend:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8888:80 --name retro-frontend carmenpadi/retro-frontend:latest'
            }
        }
    }
}
