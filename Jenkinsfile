node('docker'){

  stage('Checkout') {
    checkout scm
  }


  stage('Build') {
    def image = docker.build "lonix\ansible:${env.BUILD_TAG}"
  }

  stage('Test') {
    print "Do your testing here"
    sh "docker images lonix\ansible:${env.BUILD_TAG}"
  }

  stage('Push') {
    image.push
  }

  stage('Cleanup') {
    sh "docker rmi lonix\ansible:${env.BUILD_TAG}"
    step([$class: 'WsCleanup'])
  }
}
