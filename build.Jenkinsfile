pipeline {
    agent any
    stages {
        stage('Build docker image') {
            steps {
                    sh '''
                        # cd polybot

                        docker build -t roberta_app:${BUILD_NUMBER} .
                        docker push alonithuji/roberta_app:${BUILD_NUMBER}
                    '''

            }
        }
    }
}