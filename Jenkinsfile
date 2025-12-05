	//
	//Начало изменений
	//
pipeline {
    agent {
        docker {
            image 'nodejs:v1'
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'build -t xiozip/nodejs:v1'
            }
        }
    }
	        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }

//------------------

//--------------------



