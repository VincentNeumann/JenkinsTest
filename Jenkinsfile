pipeline  {
  // agent any
    agent {
    // this image provides everything needed to run Cypress
    docker {
      image 'cypress/base:latest'
      // image 'alpine:latest'
    }
  }

  tools {
    nodejs "nodejs"
    dockerTool "docker"
  }
  stages{

    // stage("Initialize"){
    //   steps{
    //       def dockerHome = tool 'docker'
    //       env.PATH = "${dockerHome}/bin:${env.PATH}"
    //   }
    // }
    stage("build"){
      steps{
        
        sh("ls .")
        // sh('chown -R 501:20 "/.npm"')
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
