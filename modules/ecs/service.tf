resource "aws_ecs_service" "ecs-service" {
  	name            = "${var.service_name}"
  	cluster         = "${aws_ecs_cluster.ecs_c.id}"
  	task_definition = "${aws_ecs_task_definition.task_def.family}:${max("${aws_ecs_task_definition.task_def.revision}", "${data.aws_ecs_task_definition.task_def.revision}")}"
  	desired_count   = 1
        lifecycle {
          ignore_changes = ["desired_count"]
        }
        network_configuration {
          security_groups = ["${var.ecs_security_group}"]
          subnets         = "${var.container_subnets}"
        }
  	load_balancer {
    	target_group_arn  = "${aws_alb_target_group.ecs-target-group.arn}"
    	container_port    = "${var.container_port}"
    	container_name    = "${var.container_name}"
	}
}
