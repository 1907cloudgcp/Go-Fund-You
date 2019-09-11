#!/usr/bin/env groovy
//@Library('github.com/stakater/fabric8-pipeline-library@master') _

//pushDockerImage {
//    dockerRegistryURL = "docker.io"
//    imagePrefix = "3.5.4-jdk1.8-centos7"
//}

pipeline {
    agent { docker { image 'maven:3.3.3' } }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}
