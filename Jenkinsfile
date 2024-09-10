pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        echo 'Starting checkout of the source code...'
        checkout scm
        echo 'Checkout completed.'
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          echo 'Starting Docker image build...'

          // Build the Docker image using the Dockerfile in the repository
          dockerImage = docker.build("nlarison/jenkins_test:${env.BUILD_ID}")

          // Log message after successful build
          echo "Docker image build completed: nlarison/jenkins_test:${env.BUILD_ID}"
        }

      }
    }

    stage('Push Docker Image') {
      steps {
        script {
          echo 'Starting Docker image push to Docker Hub...'

          // Push the Docker image to Docker Hub or another registry
          docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-login') {
            dockerImage.push()
          }

          // Log message after successful push
          echo 'Docker image push completed successfully.'
        }

      }
    }

  }
}