pipeline {
    agent any

    parameters {
     string(name: 'IMAGE_URL', defaultValue: '', description: '')
    }

    stages {
        stage('Deploy') {
            steps {
                sh '''
                    echo "deploying to k8s cluster ..( or any other alternative)"
                '''
            }
        }
    }
}