resource "aws_security_group" "external" {
  name        = "default_external"
  description = "Internet Facing Security Group"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["${var.external_cidr}"]
  }

  tags {
    Name = "external"
  }
}
