pipeline {
    agent any

    environment {
        IMG_NAME = "roberta_app:${BUILD_NUMBER}"
    }

    stages {
        stage('Build docker image') {
            steps {

                    sh '''
                        # cd polybot
                        docker build -t $IMG_NAME .
                        docker tag $IMG_NAME alonithuji/$IMG_NAME
                        docker push alonithuji/$IMG_NAME
                    '''

            }
        }

        stage('Trigger Deploy') {
            steps {
                build job: 'RobertaDeploy', wait: false, parameters: [
                    string(name: 'IMAGE_URL', value: "alonithuji/$IMG_NAME")
                ]
            }
        }

    }
}