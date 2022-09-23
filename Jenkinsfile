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
            sh 'docker build -t myfinalimage .'
            }
       }
       stage('Run Image') {
            steps {
            sh 'docker run -d --name mycontainer2 -p 5000:5000 myfinalimage'
            }
       }
       stage('Testing'){
            steps {
                echo 'Testing..'
                }
       }
    }
}
