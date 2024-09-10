pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Log message before starting the checkout
                echo 'Starting checkout of the source code...'

                // Checks out source code
                checkout scm

                // Log message after successful checkout
                echo 'Checkout completed.'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Log message before starting the build
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
                    // Log message before pushing the Docker image
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
