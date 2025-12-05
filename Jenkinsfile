	//
	//Начало изменений
	//
	stage('Build Docker Image'){
			step([$class: 'DockerBuilderPublisher', cleanImages: false, cleanupWithJenkinsJobDelete: false, cloud: '', dockerFileDirectory: 'xiozip/docker-image', fromRegistry: [], pushCredentialsId: '', pushOnSuccess: false, tagsString: ''])
		}
	stage('End '){
		echo 'Pipline end'
	}		