pipeline {
  agent any
  
  stages {
    stage('build') {
      steps {
        sh 'run make'
        sh './a.out'
      }
    }
  }
}
