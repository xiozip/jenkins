	//
	//Начало изменений
	//
//stage('Checkout Github') {
 //  git switch: 'main', credentialsId: 'GitHUB', url: 'https://github.com/xiozip/jenkins'
//   }
   stage('Install node dependencies') {
    sh 'npm install'
}
stage('Test Code') {
    sh 'npm test'
}
stage('Build Docker Image'){
			steps {
				script {
					dockerImage = docker.build("${DOCKER_HUB_REPO}:latest")
				}
			}
		}
		stage('Trivy Scan'){
			steps {
				sh 'trivy --severity HIGH,CRITICAL --no-progress image --format table -o trivy-scan-report.txt ${DOCKER_HUB_REPO}:latest'
			}
		}
		stage('Push Image to DockerHub'){
			steps {
				script {
					docker.withRegistry('https://registry.hub.docker.com', "${DOCKER_HUB_CREDENTIALS_ID}"){
						dockerImage.push('latest')
					}
				}
			}
		}
		stage('some block') {
			sh '''curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
			chmod +x kubec	tl
			mv kubectl /usr/local/bin/kubectl
			'''
}
