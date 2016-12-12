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
  withDockerRegistry([credentialsId: '9885c61e-ae8f-4a7e-ae97-317653b179ba']) {
    image.push "${env.BUILD_NUMBER}"
    image.push 'latest'
    }
  }
}
