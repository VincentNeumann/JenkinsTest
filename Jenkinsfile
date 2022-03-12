def container = "cypressContainer"
def containerDirectory = "cypressContainer"
def scriptDir = $PWD

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
        // sh("docker rm ${container}")
        sh("pwd")
        sh("docker run --name ${container} -it -v ${scriptDir}:/e2e -w /e2e cypress/included:3.2.0")
        sh("docker exec ${container} NO_COLOR=1 ")

        // sh("docker cp ./cypress ${container}:${containerDirectory}/cypress")
        sh("docker exec ${container} /e2e/node_modules/.bin/cypress run --spec cypress/integration/*spec.js")
        sh("ls .")
        // sh('chown -R 501:20 "/.npm"')
        sh("npm install --cache /tmp/empty-cache") // this is sort of a hack
        sh("NO_COLOR=1")
        sh("./node_modules/.bin/cypress run --spec cypress/integration/*spec.js ")

        sh("docker rm ${container}")
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
