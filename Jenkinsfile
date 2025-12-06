	//
	//Начало изменений
	//
pipeline {
  agent none
  stages {
    stage('Back-end') {
      agent {
        docker { image 'debian:latest' }
      }
      steps {
        sh 'ip a'
		}
	}
}
}

