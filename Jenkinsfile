	//
	//Начало изменений
	//
pipeline {
  agent none
  stages {
    stage('Back-end') {
      agent {
        docker { image 'node:alpine' }
      }
      steps {
        sh 'mvn --version'
      }
    }
    stage('Front-end') {
      agent {
        docker { image 'node:alpine' }
      }
      steps {
        sh 'node --version'
      }
    }
  }
}