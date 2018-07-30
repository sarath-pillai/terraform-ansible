output "region" {
  value = "${var.region}"
}

output "ecs-service-role-arn" {
  value = "${aws_iam_role.ecs-service-role.arn}"
}

output "ecs-instance-role-name" {
  value = "${aws_iam_role.ecs-instance-role.name}"
}
output "ecs-target-group-arn" {
    value = "${aws_alb_target_group.ecs-target-group.arn}"
}
output "ecs-service-arn" {
    value = "${aws_ecs_service.ecs-service.arn}"
}
