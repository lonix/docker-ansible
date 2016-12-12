node('docker'){

  stage('Checkout') {
    checkout scm
  }


  stage('Build') {
    def image = docker.build "lonix/ansible:${env.BUILD_TAG}"
  }

  stage('Test') {
    print "Do your testing here"
    sh "docker images ${c.id}"
  }

  stage('Push') {
  withDockerRegistry([credentialsId: '9885c61e-ae8f-4a7e-ae97-317653b179ba']) {
    image.push
    }
  }

  stage('Cleanup') {
    sh "docker rmi lonix/ansible:${env.BUILD_TAG}"
    step([$class: 'WsCleanup'])
  }
}
