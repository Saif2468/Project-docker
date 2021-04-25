pipeline {
  agent any
  stages {
    stage('pulling Dockerfile from github') {
      steps {
        git(url: 'https://github.com/Saif2468/Project-docker.git', branch: 'master')
      }
    }

    stage('') {
      steps {
        sh 'rsync -avh  /var/lib/jenkins/workspace/Dockerproject/*   root@172.31.23.69:/opt'
      }
    }

  }
}