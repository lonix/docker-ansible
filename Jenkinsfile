node('docker'){

  stage('Checkout') {
    checkout scm
  }


  stage('Build') {
    SnapshotBuild = docker.build "lonix/ansible:${env.BUILD_TAG}"
  }

  stage('Test') {
    SnapshotBuild.inside {
      sh 'ansible --version'
    }
  }

  stage('Push') {
  withDockerRegistry([credentialsId: '9885c61e-ae8f-4a7e-ae97-317653b179ba']) {
    SnapshotBuild.push 'latest'
    SnapshotBuild.push "${env.BUILD_NUMBER}"
    }
  }
}
