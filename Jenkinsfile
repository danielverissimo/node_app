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
                sh('npm install')
                sh('npm test')
            }
        }
        stage('Deploy') {
          steps {
            input 'Você aprova essa Build?'

            sh('docker build -t "danyelsanches/node_app:latest" .')
            sh('docker login -u danyelsanches -p "597947@003"')
            sh('docker push "danyelsanches/node_app:latest"')
            sh('docker stack deploy -c docker-compose.yml node')

          }
        }
    }
}