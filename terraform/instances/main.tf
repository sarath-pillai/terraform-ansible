data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "mongodb" {
  ami                         = "${data.aws_ami.ubuntu.id}"
  instance_type               = "t2.micro"
  key_name                    = "${var.key_name}"
  vpc_security_group_ids      = ["${var.security_group}"]
  subnet_id                   = "${var.subnetid}"
  associate_public_ip_address = "${var.public_ip}"
  tags {
    Name = "${var.mongodb_instance_name}"
  }
}
