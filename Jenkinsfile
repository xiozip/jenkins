pipeline {
   agent {
      kubernetes {
         yaml '''
            kind: Deployment
            apiVersion: v1
            metadata:
            name: debian-latest
            spec:
            replicas: 2
            selector:
            matchLabels:
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