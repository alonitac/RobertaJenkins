pipeline {
    agent any

    stages {
        stage('Tests before build') {
            parallel {
             stage('Unittest') {
                 steps {
                     sh 'echo "unittesting..."'
                 }
             }
             stage('Lint') {
                 steps {
                     sh 'echo "linting..."'
                 }
             }
            }
        }
        stage('Tests after build') {
            steps {
                sh 'echo "scanning for vulnerabilities..."'
            }
            parallel {
              stage('API test') {
                 steps {
                     sh 'echo "testing API..."'
                 }
              }
              stage('Load test') {
                  steps {
                      sh 'echo "testing under load..."'
                  }
              }
            }
        }
    }
}