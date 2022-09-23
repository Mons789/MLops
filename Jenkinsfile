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
	        sh 'docker run -ti -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock --privileged --name jenkins jenkins'
	        }
	   }
	   stage('Testing'){
	        steps {
	            echo 'Testing..'
	            }
	   }
    }
}
