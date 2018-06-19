pipeline {
    agent any
    stages {
        stage ('Checkout') {
          steps {
            git 'https://github.com/danielverissimo/node_app.git'
          }
        }
        stage('Test') {
            steps {

            }
        }
        stage('Deploy') {
          steps {
            input 'Do you approve the deployment?'

            sh('docker build -t "danyelsanches/node_app:latest" .')
            sh('docker login -u danyelsanches -p "597947@003"')
            sh('docker push "danyelsanches/node_app:latest"')
            sh('docker stack deploy -c docker-compose.yml node')

          }
        }
    }
}