pipeline {
   agent {
      kubernetes {
         yaml '''
apiVersion: apps/v1
kind: Deployment
metadata:
               name: nginx-deployment
               labels:
    app: nginx
spec:
  replicas: 2
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: debian-latest
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