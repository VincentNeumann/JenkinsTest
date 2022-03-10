pipeline  {
  tools {
    nodejs "nodejs"
    dockerTool "docker"
  }
  // agent any
    agent {
    // this image provides everything needed to run Cypress
    docker {
      image 'cypress/base:10'
    }
  }

  stages{

    stage("Initialize"){
      steps{
          def dockerHome = tool 'docker'
          env.PATH = "${dockerHome}/bin:${env.PATH}"
      }
    }
    stage("build"){
      steps{
        sh("pwd")
        sh("ls .")
        sh("npm install cypress")
        sh("./node_modules/.bin/cypress run --spec cypress/integration/*spec.js ")
        echo "build is completed"
      }
    }
    stage("test"){
      steps{
        echo "tests are completed"
      }
    }
    stage("deploy"){
      steps{
        
        echo "succesful deployed"
      }
    }
  }
}
