// pipelines/build.Jenkinsfile

pipeline {
    agent {
    label 'general'
    }

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