	//
	//Начало изменений
	//
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
//------------------
	step	{
	[$class: 'DockerBuilderPublisher', cleanImages: false, cleanupWithJenkinsJobDelete: false, cloud: '', dockerFileDirectory: '.', fromRegistry: [], pushCredentialsId: '', pushOnSuccess: false, tagsString: 'images:ver2']
			}
//--------------------
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


