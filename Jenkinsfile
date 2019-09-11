pipeline {
    
    stages {
        environment {
            PROJECT_ID = 'project-2-251819'
            DATABASE_NAME = credentials('database-name')
            JDBC_SCHEMA = credentials('jdbc-schema')
            JDBC_URL = credentials('jdbc-url')
            JDBC_USERNAME = credentials('jdbc-username')
            JDBC_PASSWORD = credentials('jdbc-password')
        }
        stage('Maven Build') {
            agent {
                docker {
                    image = 'maven:3.6.1-jdk-8-slim'
                }
            }
            steps {
                echo 'Maven Build'
                sh 'mvn install'
            }
        }
        stage('Build Image') {
            agent {
                docker {
                    image = 'docker:19.03.2'
                }
            }
            steps {
                echo 'Docker Build Image'
                sh '-c docker build -t gcr.io/${PROJECT_ID}/go-fund-you:productionlatest -f ./devops/Dockerfile --build-arg DATABASE_NAME=${DATABASE_NAME} --build-arg JDBC_SCHEMA=${JDBC_SCHEMA} --build-arg JDBC_URL=${JDBC_URL} --build-arg JDBC_USERNAME=${JDBC_USERNAME} --build-arg JDBC_PASSWORD=${JDBC_PASSWORD}'
            }
        }
        stage('Deploy') {
            /*
            agent { 
                kubernetes {

                }
            }
            */
            steps {
                echo 'Deploying to Kubernetes'
            }
        }
    }
}
