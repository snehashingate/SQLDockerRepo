pipeline{
  agent {
    dockerfile true
  }
  stages{
    stage('Checking sqlite version'){
      steps{
        sh "sqlite3 --version"
      }
    }
  }
}
