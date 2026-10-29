pipeline {
    agent any

    environment {
        IMAGE_NAME = 'mamadaliev-daulatbek-student-api'
        IMAGE_TAG = 'v1.0-mamadaliev-daulatbek'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
                echo 'Student: Mamadaliev Daulatbek'
                echo 'Group: IT-2 2309'
            }
        }

        stage('Build') {
            steps {
                sh 'chmod +x gradlew'
                sh './gradlew clean bootJar --no-daemon'
            }
        }

        stage('Test') {
            steps {
                sh './gradlew test --no-daemon'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE_NAME:$IMAGE_TAG .'
            }
        }

        stage('Verify') {
            steps {
                sh 'docker image inspect $IMAGE_NAME:$IMAGE_TAG'
                echo 'Docker image verified successfully'
            }
        }
    }

    post {
        success {
            echo 'PIPELINE SUCCESS - Mamadaliev Daulatbek'
        }
        failure {
            echo 'PIPELINE FAILED - Check Console Output'
        }
    }
}
