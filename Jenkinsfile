pipeline {
    agent any
    options {
        timestamps()
        ansiColor("xterm")
    }
    stages {
        stage('build 3.8') {
            steps {
                sh 'docker build --build-arg py3version=3.8 -t benediktkr/poetry:3.8 .'
            }
        }
        stage('build 3.9') {
            steps {
                sh 'docker build --build-arg py3version=3.9 -t benediktkr/poetry:3.9 .'
            }
        }

        stage('push') {
            steps {
                sh 'docker push benediktkr/poetry:3.8'
                sh 'docker push benediktkr/poetry:3.9'
            }
        }
    }
}
