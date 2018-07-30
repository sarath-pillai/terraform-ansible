resource "aws_launch_configuration" "ecs-launch-configuration" {
    name                        = "${var.ecs_launch_configuration}"
    image_id                    = "${var.ami_id}"
    instance_type               = "${var.instance_type}"
    iam_instance_profile        = "${var.ecs_instance_profile_name}"
    root_block_device {
      volume_type = "standard"
      volume_size = "${var.root_volume_size}"
      delete_on_termination = true
    }

    lifecycle {
      create_before_destroy = true
    }

    security_groups             = ["${var.ecs_security_group}"]
    associate_public_ip_address = "${var.public_ip}"
    key_name                    = "${var.ecs_key_pair_name}"
    user_data                   = <<EOF
                                  #!/bin/bash
                                  echo ECS_CLUSTER=${var.ecs_cluster} >> /etc/ecs/ecs.config
                                  EOF
}
