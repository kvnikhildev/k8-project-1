pipeline {
    agent any

    stages {

        stage ('git checkout'){

            steps {
                git branch: 'main', url: 'https://github.com/kvnikhildev/k8-project-1.git'
            }
        }

        stage ('build') {

            steps { 
               sh "docker build -t kvnikhill/python-app:$BUILD_NUMBER ."
            }
        }
            
        stage ('test') {

            steps {
                sh "docker run --rm python-app:latest pytest "
            }
        }


        stage ('push to docker hub') {

            steps {


               script {
                     withDockerRegistry(credentialsId: 'python-docker-key', url: 'https://index.docker.io/v1/') {
                        def image = docker.image("kvnikhill/python-app:${env.BUILD_NUMBER}")
                        image.push()

                     }
                }

            }

        }        

    }
}