	//
	//Начало изменений
	//
pipeline {
	kubeconfig(credentialsId: 'Minikube-secretext', serverUrl: 'https://192.168.49.2:8443') {
    // some block
}
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
