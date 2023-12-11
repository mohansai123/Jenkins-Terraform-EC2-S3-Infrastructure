pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        TF_region = 'ap-south-1'
        TF_bucket = 'pavanssonixbucket1'
        TF_VAR_key_name = 'demo-key'
        TF_VAR_instance_type = 't2.micro'
        GITHUB_REPO_URL = 'https://github.com/pavankumarindian/Jenkins-Terraform-EC2-S3-Infrastructure.git'
    }

    stages {
        stage('Checkout') {
            steps {
                script {
                    git branch: 'main', url: GITHUB_REPO_URL
                }
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init -input=false'
                }
            }
        }

        stage('Terraform Destroy') {
            steps {
                script {
                    sh "terraform destroy -auto-approve \
                        -var 'region=${TF_region}' \
                        -var 's3_bucket=${TF_bucket}' \
                        -var 'key_name=${TF_VAR_key_name}' \
                        -var 'instance_type=${TF_VAR_instance_type}'"
                }
            }
        }
    }
}
