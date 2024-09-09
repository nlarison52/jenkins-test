pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'python3 test.py'
      }
    }

    stage('print') {
      steps {
        echo 'test'
      }
    }

  }
}