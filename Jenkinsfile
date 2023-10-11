pipeline {
    agent any
    
    stages {
        stage('Init') {
            steps {
                script {
                    echo 'Initializing Terraform...'
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    echo 'Running Terraform plan...'
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    echo 'Applying Terraform changes...'
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}

