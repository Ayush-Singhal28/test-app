### Demo App

 #### Prerequisite
 You must have AWS account
 To install Terraform, follow this [page](https://learn.hashicorp.com/terraform/getting-started/install)


1.1 Terraform
● Using terraform create below infrastructure in AWS.
a. VPC
b. 2 private subnets and 2 public subnets
c. 1 NAT Gateway
d. S3 bucket
e. IAM role
f. Security Group
g. EC2 instance 
  

##### Steps in order to build infrastructure on aws and deploying Demo app
1. Export variables 
    ```bash
   export AWS_ACCESS_KEY_ID=""
   export AWS_SECRET_ACCESS_KEY=""
   export AWS_DEFAULT_REGION=us-east-1
   ```

2. Run the following commands for provisioning infra
   ```bash
   cd terraform
   terraform init
   terraform plan
   terraform apply
   ```

1.2 Docker + Kubernetes
● Write a multistage Dockerfile to build and run a sample java application. You can generate a
sample spring boot web application from https://start.spring.io/
Code present in java-sample-app and deployment dir

1.3 Python
● Write a python script to list all S3 buckets which have public access.
  Code present in list_s3_bucket.py


