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
               sh "docker build -t python-app:latest ."
            }
        }
            
        stage ('test') {

            steps {
                sh "docker run --rm python-app:latest pytest "
            }
        }


        }

}
