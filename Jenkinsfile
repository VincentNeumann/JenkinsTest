pipeline  {
  agent {
      docker { image 'node:16-alpine' }
  }
  parameters {
    booleanParam(name: 'executeUITests', defaultValue: true, description: '' )
  }
  tools {
    nodejs "nodejs"
    docker "docker"
  }


  stages{
    stage("build"){
      steps{
        sh("pwd")
        sh("npm install")
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
