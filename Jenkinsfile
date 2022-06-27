pipeline{
  agent any
  stages{
    stage('build da imagem docker'){
      steps{
        sh 'docker build -t redis .'
      }
    }
    stage('subir docker compose - redis e app'){
      steps{
        sh 'docker-compose up --build -d'
      }
    }
    stage('sleep para subir o containers'){
      steps{
        sh 'sleep 10'
      }
    }
    stage('teste da aplicação'){
      steps{
        sh 'chmod a+x teste-app.sh'
        sh './teste-app.sh'
      }
    }
  }
}
