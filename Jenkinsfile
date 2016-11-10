node('docker'){

  stage('Checkout') {
    scm checkout
  }


  stage('Build') {
    def image = docker.build "${id}"
  }

  stage('Test') {
    print "Do your testing here"
    sh "docker images ${id}"
  }

  stage('Cleanup') {
    sh "docker rmi ${id}"
    step([$class: 'WsCleanup'])
  }
