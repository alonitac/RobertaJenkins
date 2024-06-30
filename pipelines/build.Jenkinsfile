// pipelines/build.Jenkinsfile

pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Build') {
            steps {
                sh 'ls'
                sh 'docker info'
            }
        }
    }
}