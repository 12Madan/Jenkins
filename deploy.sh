pipeline {
    agent any

    parameters {
        choice(name: 'ENV', choices: ['dev', 'qa', 'prod'], description: 'Select Environment')
    }

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/your-username/student-service.git'
            }
        }

        stage('Print Environment') {
            steps {
                echo "Environment selected: ${params.ENV}"
            }
        }

        stage('Deploy') {
            steps {
                script {
                    if (params.ENV == 'dev') {
                        echo "Deploying to DEV environment"
                    }
                    if (params.ENV == 'qa') {
                        echo "Deploying to QA environment"
                    }
                    if (params.ENV == 'prod') {
                        echo "Deploying to PROD environment"
                    }
                }
            }
        }
    }
}
