pipeline {
    agent any
    stages {
        stage('Build docker image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'mydockerlogin', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
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