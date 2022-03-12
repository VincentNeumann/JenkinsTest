def container = "cypressContainer"

pipeline  {
  agent any
  //   agent {
  //   // this image provides everything needed to run Cypress
  //   docker {
  //     image 'cypress/base:latest'
  //     args '--user=root --workdir=/mnt/cypress'
  //     // image 'alpine:latest'
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
        sh("docker run cypress/base:latest")
        sh("docker cp ./cypress ./${container}/cypress")
        sh("ls .")
        // sh('chown -R 501:20 "/.npm"')
        sh("npm install --cache /tmp/empty-cache") // this is sort of a hack
        sh("NO_COLOR=1")
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
