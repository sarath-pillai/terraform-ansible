variable "vpc_id" {
  description = "VPC ID inside which sg will be created"
  default = ""
}
variable "external_cidr" {
  description = "External Source Address/Subnet"
  default = ""
}
variable "internal_cidr" {
  description = "External Source Address/Subnet"
  default = ""
}
variable "aws_region" {
  description = "Region for the VPC"
  default = "us-east-1"
}
