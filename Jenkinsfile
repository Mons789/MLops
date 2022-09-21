pipeline {
	agent any
	    stages {
	        stage('Clone Repository') {
	        /* Cloning the repository to our workspace */
	        steps {
	        checkout scm
	        }
	   }
	   stage('Build Image') {
	        steps {
	        sh 'docker build -t image1 .'
	        }
	   }
	   stage('Run Image') {
	        steps {
	        sh 'docker run -d -v /var/run/docker.sock:/var/run/docker.sock \-v $(which docker):/usr/bin/docker -p 8080:8080 image1'
	        }
	   }
	   stage('Testing'){
	        steps {
	            echo 'Testing..'
	            }
	   }
    }
}
