variable "aws_region" {
  description = "Region for the VPC"
  default = "us-east-1"
}
variable "environment_name" {
  description = "Terraform environment"
  default = ""
}
variable "alb_name" {
  description = "ALB Name"
  default = ""
}
variable "lb_sg_id" {
  description = "LB Security ID"
  default = ""
}
variable "lb_pub_sub1" {
  description = "Public Subnet 1 for LB"
  default = ""
}
variable "lb_pub_sub2" {
  description = "Public Subnet 2 for LB"
  default = ""
}

