terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 5.0"
   }
 }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-central-1"
}

# Creating a new VPC
resource "aws_vpc" "production" {
  cidr_block = "192.168.0.0/24"

  tags = {
    "Name" = "Production VPC"
  }
}


# Creating a subnet in the VPC
resource "aws_subnet" "webapps"{
  vpc_id = aws_vpc.production.id
  cidr_block = "192.168.0.32/27"
  availability_zone = "eu-central-1a"
  
  tags = {
    "Name" = "Web Applictations Subnet"
  }
}