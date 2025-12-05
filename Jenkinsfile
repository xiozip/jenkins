	//
	//Начало изменений
	//
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
			step([$class: 'DockerBuilderPublisher', cleanImages: false, cleanupWithJenkinsJobDelete: false, cloud: '', dockerFileDirectory: 'https://github.com/xiozip/jenkins', fromRegistry: [], pushCredentialsId: 'DockerHUB', pushOnSuccess: false, tagsString: 'my-images:v1'])
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
}


