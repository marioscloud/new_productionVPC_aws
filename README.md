# My Terraform Project 2: Provision a new subnet for the production VPC with the local name webapps

## Project Overview
This project provides a comprehensive guide to setting up and managing a new subnet for the production VPC with the local name webapps using Terraform. The repository includes a well-structured directory with modular configurations, enabling scalable and maintainable infrastructure as code practices. This repository is ideal for cloud architects, DevOps engineers, and anyone looking to automate the creation of AWS VPCs and manage infrastructure efficiently.

    • Set the IPv4 CIDR block for the subnet to 192.168.0.32/27
    • Set the availability zone for the subnet to eu-central-1a
    • Tag the new resource and use the key-value map Name = "Web Applications Subnet"
    • Apply the configuration to provision the infrastructure on AWS.
    • Go to the AWS Management Console -> VPC Dashboard and notice that both the VPC and the subnet were provisioned.
    • Test your solution and then destroy the entire infrastructure.

## Prerequisites
- Terraform v5.0 or later
- AWS CLI configured with appropriate credentials
- Configuring the AWS Provider. Use your own access and secret keys!

export AWS_ACCESS_KEY_ID=(your access key id)

export AWS_SECRET_ACCESS_KEY=(your secret access key)

export AWS_DEFAULT_REGION=”eu-central-1”

## Contact
If you have any questions, feel free to reach out at marioscloud@duck.com.


## Usage
1. Clone the repository:
```sh
git clone https://github.com/marioscloud/new_productionVPC_aws

2. Navigate to the project directory:
sh
cd /project_aws_02

3. Initialize Terraform:
sh
terraform init

4. Plan and apply the configuration:
sh
terraform plan
terraform apply

5. Destroy the resources when no longer needed:
sh
terraform destroy
