variable "aws_region" {
  description = "Region for the VPC"
  default = "us-east-1"
}
variable "mongodb_instance_name" {
  description = "Mongo Db instance name"
  default = "mongodb-terraform"
}
variable "key_name" {
  description = "Instance SSH Key"
  default = "terraform-test"
}
variable "security_group" {
  description = "Security Group For the Instance"
  default = "sg-10f2a85a"
}
variable "subnetid" {
  description = "Subnet ID for the instance"
  default = "subnet-1f5fe143"
}

variable "public_ip" {
  description = "Assign Public IP or not"
  default = "false"
}
