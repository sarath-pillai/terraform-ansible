resource "aws_alb_target_group" "ecs-target-group" {
    name                = "${var.target_group_name}"
    port                = "${var.target_group_port}"
    protocol            = "${var.target_group_protocol}"
    vpc_id              = "${var.vpc_id}"
    target_type         = "ip"

    health_check {
        healthy_threshold   = "${var.healthy_threshold}"
        unhealthy_threshold = "${var.unhealthy_threshold}"
        interval            = "${var.healthcheck_interval}"
        matcher             = "${var.response_match}"
        path                = "${var.http_path}"
        port                = "traffic-port"
        protocol            = "${var.healthcheck_protocol}"
        timeout             = "${var.healthcheck_timeout}"
    }
}

resource "aws_alb_listener" "ecs_listener" {
  load_balancer_arn = "${var.alb_arn}"
  port              = "${var.lb_listener_port}"
  protocol          = "HTTP"
  default_action {
    target_group_arn = "${aws_alb_target_group.ecs-target-group.arn}"
    type             = "forward"
  }
}
