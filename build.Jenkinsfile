pipeline {
    agent any

    environment {
        IMG_NAME = "roberta_app:${BUILD_NUMBER}"
    }

    stages {
        stage('Build docker image') {
            steps {
              withCredentials(
                 [usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASS')]
              ) {
                    sh '''
                        # cd polybot
                        docker login -u $DOCKER_USERNAME -p $DOCKER_PASS
                        docker build -t $IMG_NAME .
                        docker tag $IMG_NAME alonithuji/$IMG_NAME
                        docker push alonithuji/$IMG_NAME
                    '''
              }
            }
        }
    }
}