output "vpc_id" {
 value = "${aws_vpc.default.id}"
}
output "public_subnet_id" {
 value = "${aws_subnet.public-subnet.id}"
}
output "private_subnet_id" {
 value = "${aws_subnet.private-subnet.id}"
}
