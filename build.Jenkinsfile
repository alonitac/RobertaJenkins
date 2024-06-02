pipeline {
    agent any
    stages {
        stage('Build docker image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'mydockerlogin', variable: 'USERPASS')]) {
                    sh '''

                        docker login -u ... -p ...
                        docker build ...
                        # docker tag ..
                        docker push ...
                    '''
                }
            }
        }
    }
}