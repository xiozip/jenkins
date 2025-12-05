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
        sh 'uname -a'
		}
	}
}
