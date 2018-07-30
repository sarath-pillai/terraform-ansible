variable "aws_region" {
  description = "Region for the VPC"
  default = "us-east-1"
}
variable "backend_key" {
  description = "Terraform Backend Key"
  default = ""
}
variable "environment_name" {
  description = "Terraform environment"
  default = ""
}
variable "vpc_name" {
  description = "vpc_name"
  default = "testingwithterra"
}
variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr1" {
  description = "CIDR for the public subnet"
  default = "10.0.1.0/24"
}
variable "public_subnet_cidr2" {
  description = "CIDR for the public subnet"
  default = "10.0.1.0/24"
}

variable "private_subnet_cidr1" {
  description = "CIDR for the private subnet"
  default = "10.0.2.0/24"
}
variable "private_subnet_cidr2" {
  description = "CIDR for the private subnet"
  default = "10.0.2.0/24"
}

variable "ami" {
  description = "AMI for EC2"
  default = "ami-4fffc834"
}

variable "key_path" {
  description = "SSH Public Key path"
  default = "/home/core/.ssh/id_rsa.pub"
}

