resource "aws_security_group" "internal" {
  name        = "default_internal"
  description = "Allow all inbound traffic for private subnet"
  vpc_id      = "${var.vpc_id}"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["${var.internal_cidr}"]
  }

  tags {
    Name = "internal"
  }
}
