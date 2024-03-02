node{
  def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("dounmogni/nginx")
    }
    stage('Run image') {
       docker.image('dounmogni/nginx').withRun('-p 80:80'){
	       sh 'docker ps'
	       sh 'curl localhost'
       }
    }

    stage('Test image') {
        docker.image('dounmogni/nginx').withRun('-p 80:80') { c ->
        sh 'docker ps'
        sh 'curl localhost'
	     }
    }
}

