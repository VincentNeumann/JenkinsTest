pipeline  {
  agent any
  
  tools {
    nodejs "nodejs"
    dockerTool "docker"
  }


  stages{
    stage("build"){
      steps{
        sh("pwd")
        sh("npm install")
        sh("sudo dockerd")
        sh("docker run node:16-alpine")
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
