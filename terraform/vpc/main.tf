# Define our VPC
resource "aws_vpc" "default" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name = "${var.vpc_name}"
  }
}

# Define the public subnet
resource "aws_subnet" "public-subnet" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.public_subnet_cidr}"
  availability_zone = "us-east-1a"

  tags {
    Name = "Web Public Subnet"
  }
}

# Define the private subnet
resource "aws_subnet" "private-subnet" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.private_subnet_cidr}"
  availability_zone = "us-east-1b"

  tags {
    Name = "Database Private Subnet"
  }
}

# Define the internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.default.id}"

  tags {
    Name = "VPC IGW"
  }
}
resource "aws_eip" "nat_eip" {
  vpc      = true
  depends_on = ["aws_internet_gateway.gw"]
}

resource "aws_nat_gateway" "nat" {
    allocation_id = "${aws_eip.nat_eip.id}"
    subnet_id = "${aws_subnet.public-subnet.id}"
    depends_on = ["aws_internet_gateway.gw"]
}
# Define the route table
resource "aws_route_table" "web-public-rt" {
  vpc_id = "${aws_vpc.default.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags {
    Name = "Public Subnet RT"
  }
}
resource "aws_route_table" "private_route_table" {
    vpc_id = "${aws_vpc.default.id}"

    tags {
        Name = "Private route table"
    }
}

resource "aws_route" "private_route" {
	route_table_id  = "${aws_route_table.private_route_table.id}"
	destination_cidr_block = "0.0.0.0/0"
	nat_gateway_id = "${aws_nat_gateway.nat.id}"
}
# Assign the route table to the public Subnet
resource "aws_route_table_association" "web-public-rt" {
  subnet_id = "${aws_subnet.public-subnet.id}"
  route_table_id = "${aws_route_table.web-public-rt.id}"
}
resource "aws_route_table_association" "private-route" {
    subnet_id = "${aws_subnet.private-subnet.id}"
    route_table_id = "${aws_route_table.private_route_table.id}"
}

