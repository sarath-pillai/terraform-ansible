# main creds for AWS connection
variable "ecs_cluster" {
  description = "ECS cluster name"
}

variable "ecs_key_pair_name" {
  description = "ECS key pair name"
}

variable "region" {
  description = "AWS region"
}

###################Load Balancer Configuration################
variable "target_group_port" {
  description = "Target Group Port"
}
variable "target_group_protocol" {
  description = "Target Group Protocol"
}
variable "lb_arn" {
  description = "Load Balancer ARN"
}
variable "app_fqdn" {
  description = "Application FQDN"
}
variable "lb_listener_port" {
  description = "LB listener port"
}
variable "container_port" {
  description = "Container Listener Port"
}
##################VPC Configuration#########################

variable "vpc_id" {
  description = "VPC Id - of already existing VPC"
}
variable "instance_subnet1" {
  description = "Subnet 1 for ecs instance"
}
variable "instance_subnet2" {
  description = "Subnet 2 for ecs instance"
}
variable "container_subnets" {
  type        = "list"
  description = "Subnets for containers"
}

##################Health Check Configuration###############

variable "healthy_threshold" {
  description = "Healthy Check Threshold"
}
variable "unhealthy_threshold" {
  description = "Unhealthy Check Threshold"
}
variable "healthcheck_interval" {
  description = "Health Check Interval"
}
variable "response_match" {
  description = "Response Match"
}
variable "http_path" {
  description = "HTTP Path for Health Check"
}
variable "healthcheck_protocol" {
  description = "Protocol for health Check"
}
variable "healthcheck_timeout" {
  description = "Timeout for Health Check"
}

#################Target Group Configuration###############

variable "target_group_name" {
  description = "Target Group Name"
}

#################Launch Configuration#################

variable "ecs_launch_configuration" {
  description = "ECS Launch Configuration Name"
}
variable "ami_id" {
  description = "AMI ID for Ecs Instance"
}
variable "instance_type" {
  description = "Type of instance"
}
variable "ecs_security_group" {
  description = "ECS Security Group Name"
}
variable "container_security_group" {
  type        = "list"
  description = "Container Security Group"
}
variable "root_volume_size" {
  description = "Root Volume Size for ECS instance"
}
variable "ecs_instance_role_name" {
  description = "ECS Instance Role Name"
}
variable "ecs_instance_profile_name" {
  description = "ECS Instance Profile Name"
}
variable "public_ip" {
  description = "Assign Public IP or not"
}
########################### Autoscale Config ################################

variable "max_instance_size" {
  description = "Maximum number of instances in the cluster"
}

variable "min_instance_size" {
  description = "Minimum number of instances in the cluster"
}

variable "desired_capacity" {
  description = "Desired number of instances in the cluster"
}
variable "instance_name" {
  description = "Instance name in autoscale group"
}
variable "autoscaling_group_name" {
  description = "Autoscaling Group Name"
}

########################## Container Config#################################
variable "container_memory" {
  description = "Desired amount of memory for the conatiner"
}
variable "container_name" {
  description = "Container Name"
}
variable "container_cpu" {
  description = "Desired amount of cpu for the conatiner"
}
variable "service_name" {
  description = "ECS Service Name"
}
variable "service_role_name" {
  description = "ECS Service Role Name"
}
variable "taskdef_family" {
  description = "Task Defenition Family Name"
}
