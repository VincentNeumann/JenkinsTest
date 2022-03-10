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
        sh("npm install" )
        sh("CYPRESS_CACHE_FOLDER=./cypress-cache ./node_modules/.bin/cypress run --headless --browser chrome --spec cypress/integration/Tests/*/")
        sh("npm run test")
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
