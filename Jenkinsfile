pipeline  {
  agent any
  parameters {
    booleanParam(name: 'executeUITests', defaultValue: true, description: '' )
  }


  stages{
    stage("build"){
      steps{
        sh("pwd")
        sh("docker run --name node -p 3000:3000")
        sh("npx cypress run")
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
