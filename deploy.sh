
pipeline {
    agent any

    parameters {
        choice(name: 'ENV', choices: ['dev', 'qa', 'prod'], description: 'Select Environment')
    }

    stages {
        stage('Print Selected Env') {
            steps {
                echo "Environment selected: ${params.ENV}"
            }
        }
    }
}
