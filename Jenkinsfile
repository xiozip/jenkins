pipeline {
   agent {
          //
          //--Памятка себе. Таким образом он дыает создать только POD не более!!!
          // В API apps/v1beta1 создаются Deployment 
         //
      kubernetes {
         yaml '''
           apiVersion: apps/v1beta1
           kind: Deployment
            metadata:
            name: debian-latest
            spec:
            replicas: 2
            strategy:
            type: RollingUpdate
            selector:
            matchLabels:
            spec:
            containers:
            - name: debian
            image: debian:latest
            resources:
            limits:
            memory: 200Mi
            requests:
            cpu: 100m
            memory: 200Mi
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