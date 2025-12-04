pipeline {
    agent any
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1, unit: 'SECONDS')
    }
    stages {
        stage('1') {
            steps {
                echo 'Hello World'
            }
        }
    }
	stages {
        stage('2') {
            steps {
                echo 'Stage 2'
            }
        }
    }
	stages {
        stage('3') {
            steps {
                echo 'Stage 3'
            }
        }
    }
}
