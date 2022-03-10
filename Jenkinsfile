pipeline  {
    agent {
    // this image provides everything needed to run Cypress
    docker {
      image 'cypress/base:10'
    }
  }
  
  tools {
    nodejs "nodejs"
    dockerTool "docker"
  }

  stages{
    stage("build"){
      steps{
        sh("pwd")
        sh("npm install cypress" )
        sh("npm run test")
        echo "build is completed"
      }
    }
    stage("test"){
      steps{
        sh("cd scripts")
        sh("pwd")

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
