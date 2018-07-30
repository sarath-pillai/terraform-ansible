data "aws_ecs_task_definition" "task_def" {
  task_definition = "${aws_ecs_task_definition.task_def.family}"
}

resource "aws_ecs_task_definition" "task_def" {
    family                = "${var.taskdef_family}"
    container_definitions = "${file("task-definitions/service.json")}"
    memory                = "${var.container_memory}"
    cpu                   = "${var.container_cpu}"
    network_mode           = "awsvpc"
}
