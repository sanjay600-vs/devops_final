pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/sanjay600-vs/devops_final.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'pytest --junitxml=test-results.xml'
            }
        }

        stage('Publish Results') {
            steps {
                junit 'test-results.xml'
            }
        }
    }
}
