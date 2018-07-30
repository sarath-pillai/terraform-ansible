
resource "aws_autoscaling_group" "ecs-autoscaling-group" {
    name                        = "${var.autoscaling_group_name}"
    max_size                    = "${var.max_instance_size}"
    min_size                    = "${var.min_instance_size}"
    desired_capacity            = "${var.desired_capacity}"
    vpc_zone_identifier         = ["${var.instance_subnet1}", "${var.instance_subnet2}"]
    launch_configuration        = "${aws_launch_configuration.ecs-launch-configuration.name}"
    health_check_type           = "ELB"
    tag {
      key                 = "Name"
      value               = "${var.instance_name}"
      propagate_at_launch = true
    }
}
