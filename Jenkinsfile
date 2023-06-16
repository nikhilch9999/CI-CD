pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/nikhilch9999/CI-CD'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t nikhilch9999/webapi:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push nikhilch9999/webapi:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
