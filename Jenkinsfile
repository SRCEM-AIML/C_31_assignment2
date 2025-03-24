pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker build -t student_project .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh 'docker tag student_project shubhsingh07/student_project'
                    sh 'docker push shubhsingh07/student_project'
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8000:8000 shubhsingh07/student_project'
            }
        }
    }
}
