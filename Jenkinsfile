pipeline {
   agent {
      kubernetes {
         yaml '''
---
kind: Deployment
apiVersion: apps/v1
metadata:
  name: debian-latest
spec:
  replicas: 2
  selector:
    matchLabels:
      app: testit
      version: v01
  template:
    metadata:
      labels:
        app: testit
        version: v01
    spec:
      containers:
      - name:debian-latest
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