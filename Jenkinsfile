node('docker'){

  stage('Checkout') {
    checkout scm
  }


  stage('Build') {
    image = docker.build "lonix/ansible:${env.BUILD_TAG}"
  }

  stage('Test') {
    image.inside {
      sh 'ansible --version'
    }
  }

  stage('Push') {
  withDockerRegistry([credentialsId: '8c6190e9-7d4a-423f-a571-3e07c77eee50']) {
    image.push "${env.BUILD_NUMBER}"
    image.push 'latest'
    }
  }
}
