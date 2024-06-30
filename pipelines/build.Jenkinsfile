// pipelines/build.Jenkinsfile

pipeline {
    agent any

    environment {
        GIT_URL = 'https://github.com/your-username/your-repo'
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