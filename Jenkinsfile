pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker build -t benediktkr/poetry:3.8 .'
            }
        }

        stage('push') {
            steps {
                sh 'docker push benediktkr/poetry:3.8'
            }
        }
    }
}
