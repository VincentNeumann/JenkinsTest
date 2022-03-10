pipeline  {
  agent any
  //   agent {
  //   // this image provides everything needed to run Cypress
  //   docker {
  //     image 'cypress/base:10'
  //   }
  // }
  
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
        sh("pwd")
        sh("./node_modules/.bin/cypress.cmd install --force" )
        sh("ls .")
        sh("npm cache add .")
        sh("CYPRESS_CACHE_FOLDER=/var/jenkins_home/.cache/Cypress")
        sh("./node_modules/.bin/cypress run --spec cypress/integration/myTests/*spec.js ")
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
