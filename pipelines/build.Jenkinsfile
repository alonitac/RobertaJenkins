// pipelines/build.Jenkinsfile

pipeline {
    agent any

    properties([
        pipelineTriggers([githubPush()]),
        githubProjectUrl('https://github.com/your-username/your-repo')
    ])

    stages {
        stage('Build') {
            steps {
                sh 'ls'
                sh 'docker info'
            }
        }
    }
}