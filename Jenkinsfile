pipeline {
   agent {
      kubernetes {
         yaml '''
		apiVersion: apps/v1
		kind: Deployment
		metadata:
		name: debian-latest
		spec:
		replicas: 2
		spec:
		containers:
		- name: debian
		image: debian:latest
		ports:
		- containerPort: 80
            '''
       }
    }
  stages {
    stage('uname -a') {
      steps {
        container('debian') {
          sh 'uname -a'
        }
      }
    }
  }
}