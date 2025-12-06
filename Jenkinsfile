	//
	//Начало изменений
	//
pipeline {
	  stages {
    stage('Buid docker images') {
      agent {
        docker { image 'node:alpine' }
      }
      steps {
        sh 'ip a'
		}
	}
}
	stage {
		stage('Kubernetes Deploy POD ') {
  agent {
    kubernetes {
      yaml '''
        apiVersion: v1
        kind: Pod
        spec:
          containers:
          - name: node
            image: node:alpine
            command:
        '''
	  }
	 }
	}
  }
}