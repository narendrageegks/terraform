pipeline {
    agent any
    stages {
              steps('init')
                {
                    sh 'terraform init'
                }
           }
    stages {
            stepe ('terraform plan')
                {
                    sh 'terraform plan'
                }
        }  
    stages{
            steps('terraform apply')
                {
                    sh 'terraform apply'
                }
        }
}
