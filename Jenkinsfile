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
    stage('uname -a') {
      steps {
        container('debian') {
          sh 'uname -a'
        }
      }
    }
  }
}