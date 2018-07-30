module "ecs" {
  source = "../../modules/ecs/"

  ecs_cluster               = "${var.ecs_cluster}"
  service_name              = "${var.service_name}"
  taskdef_family            = "${var.taskdef_family}"
  ecs_key_pair_name         = "${var.ecs_key_pair_name}"
  public_ip                 = "${var.public_ip}" 
  region                    = "${var.region}"
  vpc_id                    = "${var.vpc_id}"
  instance_name             = "${var.instance_name}"
  lb_arn                    = "${var.lb_arn}"
  instance_subnet1          = "${var.instance_subnet1}"
  instance_subnet2          = "${var.instance_subnet2}"
  ecs_launch_configuration  = "${var.ecs_launch_configuration}"
  ami_id                    = "${var.ami_id}"
  instance_type             = "${var.instance_type}"
  ecs_security_group        = "${var.ecs_security_group}"
  root_volume_size          = "${var.root_volume_size}"
  max_instance_size         = "${var.max_instance_size}"
  min_instance_size         = "${var.min_instance_size}"
  desired_capacity          = "${var.desired_capacity}"
  container_cpu             = "${var.container_cpu}"
  container_memory          = "${var.container_memory}"
  target_group_name         = "${var.target_group_name}"
  ecs_instance_role_name    = "${var.ecs_instance_role_name}"
  target_group_protocol     = "${var.target_group_protocol}"
  response_match            = "${var.response_match}"
  unhealthy_threshold       = "${var.unhealthy_threshold}"
  healthy_threshold         = "${var.healthy_threshold}"
  target_group_port         = "${var.target_group_port}"
  service_role_name         = "${var.service_role_name}"
  healthcheck_timeout       = "${var.healthcheck_timeout}"
  autoscaling_group_name    = "${var.autoscaling_group_name}"
  ecs_instance_profile_name = "${var.ecs_instance_profile_name}"
  healthcheck_interval      = "${var.healthcheck_interval}"
  healthcheck_protocol      = "${var.healthcheck_protocol}"
  http_path                 = "${var.http_path}"
  container_name            = "${var.container_name}"
  lb_listener_port          = "${var.lb_listener_port}"
  container_port            = "${var.container_port}"
  container_subnets         = "${var.container_subnets}"
  container_security_group  = "${var.container_security_group}" 
}

