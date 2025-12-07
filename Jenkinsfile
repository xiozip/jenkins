pipeline {
  agent {
    kubernetes {
 				yaml '''
				apiVersion: v1
				kind: Deployment
				spec:
				replicas: 2
				spec:
				containers:
				- name: debian
				image: debian:latest
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