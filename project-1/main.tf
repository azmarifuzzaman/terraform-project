terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


provider "aws" {
    region = "ap-southeast-2"
}



#resource "provider"_"resource_type" "aws"{
#  config options....connection {
#    key = "value"
#    key2 = "value2"
#  }

# resource "aws_instance" "my-first-server" {
#   ami =  "ami-0e040c48614ad1327"
#   instance_type = "t2.micro"

#   tags = {
#     #Name = "ubuntu"
#   }
# }


resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"
    tags = {
    Name = "production"
  }

}
