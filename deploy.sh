pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/12Madan/Jenkins.git'
            }
        }

        stage('Pull Latest Code') {
            steps {
                sh "git pull origin main"
            }
        }
