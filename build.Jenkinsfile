pipeline {
    agent any
    stages {
        stage('Build docker image') {
            steps {
                sh '''
                    docker build ...
                    # docker tag ..
                    docker push ...
                '''
            }
        }
    }
}