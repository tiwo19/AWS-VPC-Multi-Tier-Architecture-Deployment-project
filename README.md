# AWS VPC & Multi-Tier Architecture Deployment with Terraform

This project automates the deployment of a Multi-Tier Architecture in AWS using Terraform. It provisions a VPC, subnets, security groups, EC2 instances, an Application Load Balancer (ALB), and an RDS instance to host a simple web application (e.g., Nginx or Flask). By leveraging Infrastructure as Code (IaC), we achieve a repeatable, scalable, and cost-effective deployment.
Follow the Medium step by step Guide 
```sh
https://medium.com/@damipetiwo/automating-aws-vpc-multi-tier-architecture-deployment-with-terraform-e69d6ccdcca7
```
## Prerequisites

Before getting started, ensure you have the following:
- AWS Account (Sign up at [AWS](https://aws.amazon.com/))
- IAM User with Admin Access (For deploying infrastructure)
- Terraform Installed (Install [Terraform](https://www.terraform.io/downloads.html))
- AWS CLI Installed & Configured (Install [AWS CLI](https://aws.amazon.com/cli/))
  ```sh
  aws configure
  ```
  Basic Knowledge of AWS Networking & Terraform (VPCs, Subnets, Security Groups)
Code Editor (VS Code, JetBrains, or any preferred editor)
Architecture Overview
We will deploy a multi-tier infrastructure as follows:

VPC: Custom VPC for better isolation and control.
Subnets: Public & Private Subnets for a well-structured network.
Security Groups: Controlled access to instances.
Application Load Balancer (ALB): Traffic distribution across EC2 instances.
EC2 Instances: Running an -based web application.
RDS: Managed database service.
Diagram Representation

```sh
       Internet
          |
       ALB (Public)
       /      \
   EC2-1    EC2-2 (Private Subnets)
        |         |
     Database (Optional Private Subnet)
```
Folder Structure

```sh
aws-vpc-multi-tier/
│── modules/
│   ├── vpc/
│   │   ├── [main.tf](http://_vscodecontentref_/1)
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── ec2/
│   │   ├── [main.tf](http://_vscodecontentref_/2)
│   │   ├── variables.tf
│   │   ├── asg.tf
│   ├── security-groups/
│   │   ├── [main.tf](http://_vscodecontentref_/3)
│   │   ├── variables.tf
│   ├── alb/
│   │   ├── [main.tf](http://_vscodecontentref_/4)
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── rds/
│   │   ├── [main.tf](http://_vscodecontentref_/5)
│   │   ├── variables.tf
│── [main.tf](http://_vscodecontentref_/6)
│── variables.tf
│── outputs.tf
│── terraform.tfvars
│── [README.md](http://_vscodecontentref_/7)
```


Step 10: Apply Terraform Configuration
Run the following commands to deploy the infrastructure:

```sh
terraform init
terraform plan
terraform apply -auto-approve
```
⚙️ CI/CD Pipeline
This project uses GitHub Actions to implement a robust CI/CD pipeline for automating Terraform workflows. The pipeline is defined in .github/workflows/terraform-ci.yml.

✅ CI/CD Features:
Terraform Format Check – Ensures all Terraform code is properly formatted

Terraform Init – Initializes the backend and installs providers

Terraform Validate – Validates Terraform syntax and configuration

Terraform Plan – Generates and displays an execution plan

(Optional) Terraform Apply – (Manually triggered or auto-deployed in production workflows)

🚀 Workflow Triggers:
| Event	            |       Action
|-------------------|----------------|
| push to main      |	Runs terraform fmt, init, validate, and plan
| pull_request      |  Runs checks before merging into main
|workflow_dispatch	| Allows manual triggering of apply/deploy steps
