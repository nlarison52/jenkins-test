pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        sh 'python test.py'
      }
    }

    stage('print') {
      steps {
        echo 'testing'
      }
    }

  }
}