pipeline  {
  agent any
  parameters {
    booleanParam(name: 'executeUITests', defaultValue: true, description: '' )
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
