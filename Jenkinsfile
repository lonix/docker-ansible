node('docker'){

  stage('Build') {
    image = docker.build "lonix/ansible:${env.BUILD_TAG}"
  }

  stage('Test') {
    image.inside {
      sh 'ansible --version'
    }
  }


}
