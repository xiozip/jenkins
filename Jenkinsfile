	//
	//Начало изменений
	//
pipeline {
  agent {
    kubernetes {
      yaml '''
        apiVersion: v1
        kind: Pod
        spec:
          containers:
          - name: debian
            image: debian:latest
            command:
            - cat
            tty: true
        '''
    }
  }
  stages {
    stage('Ping YA.RU') {
      steps {
        container('debian') {
          sh 'uname -a'
        }
      }
    }
  }
}